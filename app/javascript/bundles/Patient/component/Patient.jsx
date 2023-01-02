import React from "react"
import PatientHeader from "./PatientHeader"
import PatientSideBar from "./PatientSidebar"
import Overview from "./Overview"
import PropTypes from "prop-types";
import { BrowserRouter, Routes, Route } from "react-router-dom"

const Patient = ({ profile_pic, first_name, roles, signed_in, id, speciality, location}) => {
  return (
    <BrowserRouter>
      <PatientHeader profile_pic={profile_pic} first_name={first_name} roles={roles} signed_in={signed_in} />
      <div className="patient-page">
        <PatientSideBar profile_pic={profile_pic} first_name={first_name} id={id} />
        <Routes>
          <Route path='/patient' element={<Overview speciality={speciality} location={location} fristname={first_name}  />} />
        </Routes>
      </div>
    </BrowserRouter>
  )
}

Patient.prototype = {
  profile_pic: PropTypes.string.isRequired,
  first_name: PropTypes.string.isRequired,
  roles: PropTypes.string.isRequired,
  signed_in: PropTypes.bool.isRequired,
  id: PropTypes.number.isRequired,
  speciality: PropTypes.array.isRequired,
  location: PropTypes.array.isRequired
}

Patient.defaultProps = {
  profile_pic: "",
  first_name: "",
  roles: "",
  signed_in: false,
  id: 0,
  speciality: [],
  location: []
}

export default Patient