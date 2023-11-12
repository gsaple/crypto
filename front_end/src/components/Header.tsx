import { type FC } from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faLevelUp, faLevelDown } from "@fortawesome/free-solid-svg-icons";

interface HeaderProps {
  marketCap: number;
  hoursDiff24: number;
}

const Header: FC<HeaderProps> = ({ marketCap, hoursDiff24 }) => {
  return (
    <>
      <h1 className="font-bold text-2xl mb-2">
        Cryptocurrency Prices by Market Cap
      </h1>
      <p className="text-gray-500">
        The global cryptocurrency market cap today is $
        {(marketCap / 1000000000000).toFixed(2)} Trillion, a
        <span className={hoursDiff24 > 0 ? "text-increase" : "text-decrease"}>
          {` ${(hoursDiff24 * 100).toFixed(2)}% `}
          <FontAwesomeIcon icon={hoursDiff24 > 0 ? faLevelUp : faLevelDown} />
        </span>
        &nbsp;change in the last 24 hours.
      </p>
    </>
  );
};

export default Header;
