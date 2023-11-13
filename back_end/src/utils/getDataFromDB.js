const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

async function getDataFromEachModel(model) {
  const today = new Date("2021-07-06 23:59:59");

  const twentyFourHoursBefore = new Date(today);
  twentyFourHoursBefore.setHours(today.getHours() - 24);

  const sevenDaysBefore = new Date(today);
  sevenDaysBefore.setDate(today.getDate() - 7);

  const oneMonthBefore = new Date(today);
  oneMonthBefore.setMonth(today.getMonth() - 1);

  try {
    const result = await model.findMany({
      where: {
        OR: [
          { date: today },
          { date: twentyFourHoursBefore },
          { date: sevenDaysBefore },
          { date: oneMonthBefore },
        ],
      },
      select: {
        name: true,
        symbol: true,
        close: true,
        volume: true,
        marketCap: true,
      },
      orderBy: {
        date: "desc",
      },
    });
    return {
      coin: {
        name: result[0].name,
        symbol: result[0].symbol,
      },
      price: result[0].close,
      hoursDiff24: (result[0].close - result[1].close) / result[1].close,
      daysDiff7: (result[0].close - result[2].close) / result[2].close,
      monthDiff: (result[0].close - result[3].close) / result[3].close,
      volume: result[0].volume,
      marketCap: result[0].marketCap,
      marketCapYesterday: result[1].marketCap,
    };
  } catch (error) {
    console.error("Error occurred:", error);
    throw error;
  }
}

async function getDataForFrontEnd() {
  const models = [
    prisma.aave,
    prisma.binanceCoin,
    prisma.bitcoin,
    prisma.cardano,
    prisma.chainLink,
    prisma.cosmos,
    prisma.cryptocomCoin,
    prisma.dogecoin,
    prisma.eOS,
    prisma.ethereum,
    prisma.iota,
    prisma.litecoin,
    prisma.monero,
    prisma.nEM,
    prisma.polkadot,
    prisma.solana,
    prisma.stellar,
    prisma.tether,
    prisma.tron,
    prisma.uniswap,
    prisma.uSDCoin,
    prisma.wrappedBitcoin,
    prisma.xRP,
  ];
  const dataPromises = models.map((model) => getDataFromEachModel(model));
  try {
    const results = await Promise.all(dataPromises);
    results.sort((a, b) => b.marketCap - a.marketCap);
    const globalMktCapToday = results.reduce((a, b) => a + b.marketCap, 0);
    const globalMktCapYesterday = results.reduce(
      (a, b) => a + b.marketCapYesterday,
      0
    );
    const cryptoData = results.map((item, index) => {
      const { marketCapYesterday, ...rest } = item;
      return {
        id: index + 1,
        ...rest,
      };
    });
    return {
      headerSummary: {
        marketCap: globalMktCapToday,
        hoursDiff24:
          (globalMktCapToday - globalMktCapYesterday) / globalMktCapYesterday,
      },
      cryptoData: cryptoData,
    };
  } catch (error) {
    console.error(error);
    throw error;
  }
}

module.exports = { getDataForFrontEnd };
