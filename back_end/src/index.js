const express = require("express");
const cors = require("cors");
const { getDataForFrontEnd } = require("./utils/getDataFromDB.js");

const app = express();
app.use(cors());

app.get("/api/data", (req, res) => {
  getDataForFrontEnd()
    .then((data) => {
      res.json(data);
    })
    .catch((error) => {
      console.error(error);
    });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
