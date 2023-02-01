import React from "react"
import PropTypes from "prop-types";
import { BrowserRouter, Routes, Route } from "react-router-dom"

import PatientHeader from "./PatientHeader"
import PatientSideBar from "./PatientSidebar"
import Appointment from "./Appointment";
import ErrorBoundary from "../../Components/ErrorBoundary";

import Overview from "./Overview"

const Patient = ({ profile_pic, first_name, roles, signed_in, id, speciality, location, last_name, email}) => {
  return (
    <BrowserRouter>
      <PatientHeader profile_pic={profile_pic} first_name={first_name} roles={roles} signed_in={signed_in} />
      <div className="patient-page">
        <PatientSideBar profile_pic={profile_pic} first_name={first_name} id={id} />
        <ErrorBoundary>
          <Routes>
            <Route path='/patient' element={<Overview speciality={speciality} location={location} fristname={first_name}  />} />
            <Route
              path='/patient/appointment/:doctor_id'
              element={<Appointment user={{first_name, last_name, email}}/>} />
          </Routes>
        </ErrorBoundary>
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
  location: PropTypes.array.isRequired,
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