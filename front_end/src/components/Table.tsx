import { type FC } from "react";

import { DataTable } from "./table-definitions/data-table";

import { columns, Crypto } from "./table-definitions/columns";

const data: Crypto[] = [
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
];

const Table: FC = () => {
  return (
    <div className="py-10">
      <DataTable columns={columns} data={data}/>
    </div>
  );
};

export default Table;
