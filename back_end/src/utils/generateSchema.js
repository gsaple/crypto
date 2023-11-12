// This file should be running at the root dir
const fs = require("fs");
const path = require("path");
const folderPath = path.join(process.cwd(), "data_set");

fs.readdir(folderPath, (err, files) => {
  if (err) {
    console.error("Error reading the directory:", err);
    return;
  }

  const schemaContent = files
    .filter((file) => file.endsWith(".csv"))
    .map((file) => {
      const varName = file.replace("coin_", "").replace(".csv", "");
      return `model ${varName} {
  sNo       Int      @id @default(autoincrement())
  name      String
  symbol    String
  date      DateTime
  high      Float
  low       Float
  open      Float
  close     Float
  volume    Float
  marketCap Float    @map("market_cap")

  @@map("${varName.toLowerCase()}")
}`;
    })
    .join("\n\n");

  const schemaFileContent = `// Generated schema based on CSV files in the folder
${schemaContent}`;

  fs.writeFile(
    path.join(folderPath, "schema.prisma"),
    schemaFileContent,
    (err) => {
      if (err) {
        console.error("Error writing schema file:", err);
        return;
      }
      console.log("schema.prisma file generated successfully!");
    }
  );
});
