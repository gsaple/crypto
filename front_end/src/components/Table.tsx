import { type FC } from "react";
import { DataTable } from "./table-definitions/data-table";
import { columns, Crypto } from "./table-definitions/columns";

interface TableProps {
  cryptoData: Crypto[];
}

const Table: FC<TableProps> = ({ cryptoData }) => {
  return (
    <div className="pb-10 pt-4">
      <DataTable columns={columns} data={cryptoData} />
    </div>
  );
};

export default Table;
