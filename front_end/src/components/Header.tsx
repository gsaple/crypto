import { type FC } from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faLevelUp } from "@fortawesome/free-solid-svg-icons";

const Header: FC = () => {
  return (
    <>
      <h1 className="font-bold text-2xl mb-2">
        Cryptocurrency Prices by Market Cap
      </h1>
      <p className="text-gray-500">
        The global cryptocurrency market cap today is $1.46 Trillion, a
        <span className="text-increase">
          &nbsp;1.7% <FontAwesomeIcon icon={faLevelUp} />&nbsp;
        </span>
        change in the last 24 hours.
      </p>
    </>
  );
};

export default Header;
