import React from "react";
import Header from "./Header";
import SearchError from "./SearchError";
import SideBar from "./SideBar";
import PropTypes from "prop-types";

const DoctorsSearchPage = ({
  regions,
  states,
  specialities,
  qualifications,
}) => {
  
  return (
    <div>
      <Header />
      <div className="search-container container">
        <div className="row search-row">
          <div className="col-3" id="sidebar-toggle">
            {/* Here is where the side bar component should be rendered */}
            <SideBar
              regions={regions}
              states={states}
              specialities={specialities}
              qualifications={qualifications}
            />
          </div>
          <div className="col-9" id="search-main">
            <SearchError />
            <button
              type="button"
              className="btn btn-primary"
              data-bs-toggle="modal"
              data-bs-target="#exampleModal"
            >
              Launch demo modal
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

// there are formally part of the Side bar component
DoctorsSearchPage.propTypes = {
  states: PropTypes.array.isRequired,
  regions: PropTypes.array.isRequired,
  specialities: PropTypes.array.isRequired,
  qualifications: PropTypes.array.isRequired,
};
DoctorsSearchPage.defaultProps = {
  states: [],
  region: [],
  specialities: [],
  qualifications: [],
};

export default DoctorsSearchPage;
