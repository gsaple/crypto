import "./globals.css";

import Header from "./components/Header";
import Table from "./components/Table";

function App() {
  return (
    <div className="h-screen flex items-center justify-center">
      <div>
        <Header />
        <Table />
      </div>
    </div>
  );
}

export default App;
