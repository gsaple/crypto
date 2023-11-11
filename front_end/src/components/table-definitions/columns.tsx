"use client";

import { ColumnDef } from "@tanstack/react-table";
import { ArrowUpDown } from "lucide-react";

export type Crypto = {
  id: number;
  coin: { name: string; symbol: string };
  price: number;
  hoursDiff24: number;
  daysDiff7: number;
  monthDiff: number;
  volume: number;
  marketCap: number;
};

export const columns: ColumnDef<Crypto>[] = [
  {
    accessorKey: "id",
    header: "#",
  },
  {
    accessorKey: "coin",
    header: "Coin",
    cell: ({ row }) => {
      const coin: Crypto["coin"] = row.getValue("coin");
      return (
        <div className="flex items-center">
          <img
            className="mr-2 w-5 h-5"
            src={`/src/assets/coin-icons/${coin.symbol}.webp`}
            alt={`${coin.name} (${coin.symbol})`}
          />
          <span className="font-bold mr-2">{coin.name}</span>
          <span className="text-xs text-gray-500">{coin.symbol}</span>
        </div>
      );
    },
  },
  {
    accessorKey: "price",
    header: ({ column }) => {
        return (
          <div className="flex items-center justify-end">
            Price
            <button
              onClick={() => column.toggleSorting(column.getIsSorted() === "asc")}
            >
              <ArrowUpDown className="ml-2 h-4 w-4" />
            </button>
          </div>
        );
      },
    // header: () => <div className="text-right">Price</div>,
    cell: ({ row }) => {
      const price: number = row.getValue("price");
      return (
        <div className="text-right">{`$${
          price > 1 ? price.toFixed(2) : price
        }`}</div>
      );
    },
  },
  {
    accessorKey: "hoursDiff24",
    header: () => <div className="text-right">24h</div>,
    cell: ({ row }) => {
      const diff: number = row.getValue("hoursDiff24");
      return (
        <div
          className={`text-right ${
            diff > 0 ? "text-increase" : "text-decrease"
          } `}
        >{`${diff.toFixed(1)}%`}</div>
      );
    },
  },
  {
    accessorKey: "daysDiff7",
    header: () => <div className="text-right">7d</div>,
    cell: ({ row }) => {
      const diff: number = row.getValue("daysDiff7");
      return (
        <div
          className={`text-right ${
            diff > 0 ? "text-increase" : "text-decrease"
          } `}
        >{`${diff.toFixed(1)}%`}</div>
      );
    },
  },
  {
    accessorKey: "monthDiff",
    header: () => <div className="text-right">1m</div>,
    cell: ({ row }) => {
      const diff: number = row.getValue("monthDiff");
      return (
        <div
          className={`text-right ${
            diff > 0 ? "text-increase" : "text-decrease"
          } `}
        >{`${diff.toFixed(1)}%`}</div>
      );
    },
  },
  {
    accessorKey: "volume",
    header: () => <div className="text-right">24h Volume</div>,
    cell: ({ row }) => {
      const amount: number = row.getValue("volume");
      return (
        <div className="text-right">
          {new Intl.NumberFormat("en-US", {
            style: "currency",
            currency: "USD",
            minimumFractionDigits: 0,
            maximumFractionDigits: 0,
          }).format(amount)}
        </div>
      );
    },
  },
  {
    accessorKey: "marketCap",
    header: ({ column }) => {
      return (
        <div className="flex items-center justify-end">
          Mkt Cap
          <button
            onClick={() => column.toggleSorting(column.getIsSorted() === "asc")}
          >
            <ArrowUpDown className="ml-2 h-4 w-4" />
          </button>
        </div>
      );
    },
    cell: ({ row }) => {
      const amount: number = row.getValue("marketCap");
      return (
        <div className="text-right">
          {new Intl.NumberFormat("en-US", {
            style: "currency",
            currency: "USD",
            minimumFractionDigits: 0,
            maximumFractionDigits: 0,
          }).format(amount)}
        </div>
      );
    },
  },
];
