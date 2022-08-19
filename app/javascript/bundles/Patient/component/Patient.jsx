import React from 'react'
import PatientHeader from './PatientHeader'
import PatientSideBar from './PatientSidebar'
import Overview from './Overview'
import { ID } from 'webpack/lib/ModuleFilenameHelpers'

const Patient = ({ profile_pic, first_name, roles, signed_in, id}) => {
  return (
    <div>
      <PatientHeader profile_pic={profile_pic} first_name={first_name} roles={roles} signed_in={signed_in} />
      <div className="patient-page">
        <PatientSideBar profile_pic={profile_pic} first_name={first_name} id={id} />
        <Overview />
      </div>
    </div>
  )
}

export default Patient