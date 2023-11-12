// This file should be running at the root dir
const fs = require("fs");
const path = require("path");
const folderPath = path.join(process.cwd(), "data_set");
const fastcsv = require("fast-csv");

const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

fs.readdir(folderPath, (err, files) => {
  if (err) {
    console.error("Error reading folder:", err);
    return;
  }

  const lowerCaseFirstLetter = (word) =>
    word.charAt(0).toLowerCase() + word.slice(1);

  files.forEach((file) => {
    if (file.endsWith(".csv")) {
      const varName = lowerCaseFirstLetter(
        file.replace("coin_", "").replace(".csv", "")
      );

      const filePath = path.join(folderPath, file);
      fs.createReadStream(filePath)
        .pipe(fastcsv.parse({ headers: true }))
        .on("data", (row) => {
          prisma[varName]
            .create({
              data: {
                name: row.Name,
                symbol: row.Symbol,
                date: new Date(row.Date),
                high: parseFloat(row.High),
                low: parseFloat(row.Low),
                open: parseFloat(row.Open),
                close: parseFloat(row.Close),
                volume: parseFloat(row.Volume),
                marketCap: parseFloat(row.Marketcap),
              },
            })
            .catch((error) => {
              console.error("Error inserting data:", error);
            });
        })
        .on("end", () => {
          console.log(`File ${file} processed.`);
        });
    }
  });
});
