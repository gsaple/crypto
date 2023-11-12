const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());

app.get("/api/data", (req, res) => {
  const data = {
    headerSummary: { marketCap: 1234567890111, hoursDiff24: -0.123456 },
    cryptoData: [
      {
        id: 1,
        coin: { name: "Aave", symbol: "AAVE" },
        price: 53.21924296,
        hoursDiff24: 0.78,
        daysDiff7: -0.8311,
        monthDiff: 0.04,
        volume: 6846922677,
        marketCap: 987654321,
      },
      {
        id: 2,
        coin: { name: "Cosmos", symbol: "ATOM" },
        price: 0.21924296,
        hoursDiff24: -0.78,
        daysDiff7: 0.8311,
        monthDiff: 0.04,
        volume: 6846922677,
        marketCap: 123456789,
      },
    ],
  };

  res.json(data);
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
