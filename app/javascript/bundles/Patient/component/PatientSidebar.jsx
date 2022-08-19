import React from 'react'
import Human from "../../../../assets/images/patient_svgs/human.svg"
import Search from "../../../../assets/images/patient_svgs/search.svg"
import DocIcon from "../../../../assets/images/patient_svgs/doc.svg"
import Calender from "../../../../assets/images/patient_svgs/calender.svg"
import Notification from "../../../../assets/images/patient_svgs/notification.svg"
import Contact from "../../../../assets/images/patient_svgs/contact.svg"
import Medication from  "../../../../assets/images/patient_svgs/medication.svg"
import Record from "../../../../assets/images/patient_svgs/record.svg"
import Lab from "../../../../assets/images/patient_svgs/lab.svg"
import Care from "../../../../assets/images/patient_svgs/care.svg"
import Form from "../../../../assets/images/patient_svgs/form.svg"
import Organ from "../../../../assets/images/patient_svgs/sOrgan.svg"
import Donor from "../../../../assets/images/patient_svgs/donor.svg"
import Currency from "../../../../assets/images/patient_svgs/currency.svg"
import History from "../../../../assets/images/patient_svgs/history.svg"
import Thumb from "../../../../assets/images/patient_svgs/thumbs.svg"
import Setting from "../../../../assets/images/patient_svgs/settings.svg"
import Logout from "../../../../assets/images/patient_svgs/logout.svg"
import Svg from './Svg'


const PatientSideBar = ({ profile_pic, first_name, id }) => {
  console.log(Search)
  return (
    <div className="side-bar">
      <div className="user-info">
      { profile_pic?
        <img src={profile_pic} alt="profile icon" className="sidebar-image" />
        :
        <img src={Human} alt="search icon" className="sidebar-image" />
      }
        <div className="patient-profile-info">
          <h2 className="name-text sidebar text-one"> {first_name} </h2>
          <h4 className="role-text sidebar text-two"> ID: { id + Math.floor(Math.random() * 10000) + 100000 }</h4>
        </div>
      </div>
      <div className="sidebar-menu">
        <h3 className="menu-head first">DASHBOARD</h3>
        <ul className="menu-list">
          <li className="list-item active-item">
            <a href="#" className= "list-link">
              <Svg Icons={Search} classN="sidebar-icons" />
              Overview
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={DocIcon} classN="sidebar-icons" />
              Doctor Search
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Calender} classN="sidebar-icons" />
              Appointment
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Notification} classN="sidebar-icons" />
              Messages
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Human} classN="sidebar-icons" />
              Profile
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Contact} classN="sidebar-icons" />
              Contact
            </a>
          </li>
        </ul>
        <h3 className="menu-head rest">MEDICAL</h3>
        <ul className="menu-list">
        <li className="list-item">
          <a href="#" className= "list-link">
            <Svg Icons={Medication} classN="sidebar-icons" />
            Medications
          </a>
        </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Record} classN="sidebar-icons" />
              Health Records
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Lab} classN="sidebar-icons" />
              LAB Results
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Care} classN="sidebar-icons" />
              Care Plans
            </a>
          </li>
          <li className="list-item">
            <a href="#" className="list-link">
              <Svg Icons={Form} classN="sidebar-icons" />
              Forms
            </a>
          </li>
        </ul>
        <h3 className="menu-head rest">DONATION</h3>
        <ul className="menu-list">
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Organ} classN="sidebar-icons" />
              Search Organ
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Donor} classN="sidebar-icons" />
              Donate Organ
            </a>
          </li>
        </ul>
        <h3 className="menu-head rest">FINANCE</h3>
        <ul className="menu-list">
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Currency} classN="sidebar-icons" />
              Billing
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={History} classN="sidebar-icons" />
              History
            </a>
          </li>
        </ul>
        <ul className="menu-list last">
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Thumb} classN="sidebar-icons" />
              Support
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Setting} classN="sidebar-icons" />
              Settings
            </a>
          </li>
          <li className="list-item">
            <a href="#" className= "list-link">
              <Svg Icons={Logout} classN="sidebar-icons" />
              Log Out
            </a>
          </li>
        </ul>
      </div>
    </div>
  )
}

export default PatientSideBar
