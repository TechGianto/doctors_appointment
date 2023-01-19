import React from "react";
import SearchOption from "./SearchOption";

const Header = ({location, speciality, updateDoctor, updateTotalPage}) => {
  return (
    <div className="search-header">
      <h2>Search Doctor, Book Appointment</h2>
      <div className="searchbox-container">
        <SearchOption location={location} speciality={speciality} updateDoctor={updateDoctor} updateTotalPage={updateTotalPage} />
      </div>
    </div>
  );
};

export default Header;
