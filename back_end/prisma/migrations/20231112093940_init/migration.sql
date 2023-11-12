-- CreateTable
CREATE TABLE "aave" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "aave_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "binancecoin" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "binancecoin_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "bitcoin" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "bitcoin_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "cardano" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "cardano_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "chainlink" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "chainlink_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "cosmos" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "cosmos_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "cryptocomcoin" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "cryptocomcoin_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "dogecoin" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "dogecoin_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "eos" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "eos_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "ethereum" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "ethereum_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "iota" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "iota_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "litecoin" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "litecoin_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "monero" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "monero_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "nem" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "nem_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "polkadot" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "polkadot_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "solana" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "solana_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "stellar" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "stellar_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "tether" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "tether_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "tron" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "tron_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "usdcoin" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "usdcoin_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "uniswap" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "uniswap_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "wrappedbitcoin" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "wrappedbitcoin_pkey" PRIMARY KEY ("sNo")
);

-- CreateTable
CREATE TABLE "xrp" (
    "sNo" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "symbol" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "high" DOUBLE PRECISION NOT NULL,
    "low" DOUBLE PRECISION NOT NULL,
    "open" DOUBLE PRECISION NOT NULL,
    "close" DOUBLE PRECISION NOT NULL,
    "volume" DOUBLE PRECISION NOT NULL,
    "market_cap" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "xrp_pkey" PRIMARY KEY ("sNo")
);
