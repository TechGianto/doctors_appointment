import React, { useEffect, useState } from "react";
import Header from "./Header";
import SearchError from "./SearchError";
import SideBar from "./SideBar";
import PropTypes from "prop-types";
import PaginatedItems from "./pagination/paginated_list";
import DoctorModal from "./DoctorModal";
import axios from "axios";

const DoctorsSearchPage = ({
  regions,
  states,
  specialities,
  qualifications,
  doctors,
  total_pages,
  updateDocotor,
}) => {

  const [doc, setDoctor] = useState([])
  const [id, getID] = useState()
  console.log(id)
  const getDoc = async(id) => {
    const response = await axios.get(`/search/${id}`, {
      headers: { "Content-Type": "application/json", "Accept": "application/json" },
    })

    setDoctor(response.data.doctors)
  }

  useEffect(() => {
    if (id != undefined) {
      getDoc(id)
    }
  }, [id])
  
  console.log(doc)


  return (
    <div>
      <Header speciality={specialities} location={states} updateDocotor={updateDocotor} />
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
            {/* <SearchError /> */}
            {
              id != undefined && doc.length != 0 && <DoctorModal doctor={doc} />
            }
            {
              doctors.length < 1 ? <SearchError /> :
                <PaginatedItems
                  doctors={doctors}
                  total_pages={total_pages}
                  getID={getID}
                  setDoctor={setDoctor}
                  updateDocotor={updateDocotor} />
            }
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
  doctors: PropTypes.array.isRequired
};
DoctorsSearchPage.defaultProps = {
  states: [],
  region: [],
  specialities: [],
  qualifications: [],
  doctors: []
};

export default DoctorsSearchPage;
