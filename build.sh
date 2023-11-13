#!/bin/bash

cd back_end
npm install
npx prisma migrate dev
cd ../data_set
unzip crypto-dataset.zip
cd ..
node back_end/src/utils/writeDataIntoDB.js
rm -rf data_set/*.csv
