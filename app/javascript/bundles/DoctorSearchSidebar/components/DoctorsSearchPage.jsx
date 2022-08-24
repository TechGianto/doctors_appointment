// import React from "react";
import Header from "./Header";
import SearchError from "./SearchError";
// import SideBar from "./SideBar";
import PropTypes from "prop-types";
import React, { useState } from "react";
// import filtericon from "../../../../assets/images/search/filter-icon.svg";
// import filtericonalt from "../../../../assets/images/search/filter-search-arrow.svg";

const doctorSearchAsset = (asset_name) => {
  return `../../../../assets/images/search/${asset_name}`;
};

const DoctorsSearchPage = ({
  regions,
  states,
  specialities,
  qualifications,
}) => {
  let [state, setState] = useState("");
  let [region, setRegion] = useState("");
  let [gender, setGender] = useState("");

  const handleStateChange = (event) => {
    console.log(event);
    setState(event.target.value);
  };

  const handleRegionChange = (event) => {
    console.log(event);
    setRegion(event.target.value);
  };

  const handleGenderChange = (event) => {
    console.log(event);
    setGender(event.target.value);
  };
  return (
    <div>
      <Header />
      <div className="search-container container">
        <div className="row search-row">
          <div className="col-3" id="sidebar-toggle">
            {/* Here is where the side bar component should be rendered */}
            <div className="search-sidebar d-flex flex-column flex-shrink-0">
              <div className="search-filter" id="search-filter">
                <div className="filter-wrap" id="filter-wrap">
                  <div
                    className="filter-icon-container"
                    id="filter-icon-container"
                  >
                    <img
                      src={require(doctorSearchAsset("filter-icon.svg"))}
                      alt="filter icon"
                      className="filter-icon"
                    />
                    <img
                      src={require(doctorSearchAsset(
                        "filter-search-arrow.svg"
                      ))}
                      alt="filter icon"
                      className="filter-icon-expand"
                    />
                  </div>
                  <div className="filter-text" id="filter-text">
                    Filter
                  </div>
                </div>
              </div>
              <form className="filter-form">
                <h6>State</h6>
                <select
                  value={state}
                  onChange={handleStateChange}
                  className="form-select filter-form-select"
                  aria-label="Default select example"
                >
                  <option>Select State</option>

                  {states.map((userstate) => (
                    <option key={userstate.state} value={userstate.state}>
                      {userstate.state}
                    </option>
                  ))}
                </select>

                <h6>Region</h6>
                <select
                  value={region}
                  onChange={handleRegionChange}
                  className="form-select filter-form-select"
                  aria-label="Default select example"
                >
                  <option>Select Region</option>
                  {regions.map((userregion) => (
                    <option key={userregion.LGA} value={userregion.LGA}>
                      {userregion.LGA}
                    </option>
                  ))}
                </select>

                <h6>Speciality</h6>
                <div className="filter-speciality">
                  <input
                    type="text"
                    placeholder="Search speciliality"
                    className="header form-control"
                  />
                  <div className="p-2">
                    {specialities.map((userspeciality) => (
                      <div
                        className="form-check"
                        key={userspeciality.name.replaceAll(/\s/g, "")}
                      >
                        <input
                          className="form-check-input"
                          type="checkbox"
                          value={userspeciality.name}
                          id={userspeciality.name.replaceAll(/\s/g, "")}
                        />
                        <label
                          className="form-check-label"
                          htmlFor={userspeciality.name.replaceAll(/\s/g, "")}
                        >
                          {userspeciality.name}{" "}
                        </label>
                      </div>
                    ))}
                  </div>
                </div>

                <h6>Qualifications</h6>
                <div className="filter-speciality">
                  <input
                    type="text"
                    placeholder="Search qualifications"
                    className="header form-control"
                  />
                  <div className="p-2">
                    {qualifications.map((userqualifications) => (
                      <div
                        className="form-check"
                        key={userqualifications.name.replaceAll(/\s/g, "")}
                      >
                        <input
                          className="form-check-input"
                          type="checkbox"
                          value={userqualifications.name}
                          id={userqualifications.name.replaceAll(/\s/g, "")}
                        />
                        <label
                          className="form-check-label"
                          htmlFor={userqualifications.name.replaceAll(
                            /\s/g,
                            ""
                          )}
                        >
                          {userqualifications.name}{" "}
                        </label>
                      </div>
                    ))}
                  </div>
                </div>

                <h6>Gender</h6>
                <select
                  value="Select Gender"
                  onChange={handleGenderChange}
                  className="form-select filter-form-select"
                  aria-label="Default select example"
                >
                  <option>Select Gender</option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                </select>
              </form>
            </div>
            {/* <SideBar /> */}
          </div>
          <div className="col-9" id="search-main">
            <SearchError />
            {/* <%= render "search/error" %> */}
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
