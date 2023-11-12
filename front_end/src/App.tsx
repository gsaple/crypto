import "./globals.css";
import { useEffect, useState } from "react";
import Header from "./components/Header";
import Table from "./components/Table";
import { Crypto } from "./components/table-definitions/columns";
import { Skeleton } from "@/components/ui/skeleton";

interface DataFromBackend {
  headerSummary: { marketCap: number; hoursDiff24: number };
  cryptoData: Crypto[];
}

function App() {
  const [data, setData] = useState<DataFromBackend | null>(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const backendUrl = import.meta.env.VITE_BACKEND_URL;
        const res = await fetch(backendUrl);
        setData(await res.json());
      } catch (error) {
        console.error("Error fetching data", error);
      }
    };
    fetchData();
  }, []);

  return (
    <div className="h-screen flex items-center justify-center">
      {data ? (
        <div>
          <Header
            marketCap={data.headerSummary.marketCap}
            hoursDiff24={data.headerSummary.hoursDiff24}
          />
          <Table cryptoData={data.cryptoData} />
        </div>
      ) : (
        <div className="flex items-center space-x-4">
          <Skeleton className="h-12 w-12 rounded-full bg-gray-500" />
          <div className="space-y-2">
            <Skeleton className="h-4 w-[250px] bg-gray-500" />
            <Skeleton className="h-4 w-[200px] bg-gray-500" />
          </div>
        </div>
      )}
    </div>
  );
}

export default App;
