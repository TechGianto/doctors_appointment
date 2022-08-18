import React from 'react'
import Human from "../../../../assets/images/patient_svgs/human.svg"
import { ReactComponent as Search } from "../../../../assets/images/patient_svgs/search.svg"
import { ReactComponent as DocIcon } from "../../../../assets/images/patient_svgs/doc.svg"
import { ReactComponent as Calender } from "../../../../assets/images/patient_svgs/calender.svg"
import { ReactComponent as Notification } from "../../../../assets/images/patient_svgs/notification.svg"
import { ReactComponent as Contact } from "../../../../assets/images/patient_svgs/contact.svg"
import { ReactComponent as Medication } from  "../../../../assets/images/patient_svgs/medication.svg"
import { ReactComponent as Record } from "../../../../assets/images/patient_svgs/record.svg"
import { ReactComponent as Lab } from "../../../../assets/images/patient_svgs/lab.svg"
import { ReactComponent as Care } from "../../../../assets/images/patient_svgs/care.svg"
import { ReactComponent as Form } from "../../../../assets/images/patient_svgs/form.svg"
import { ReactComponent as Organ } from "../../../../assets/images/patient_svgs/sOrgan.svg"
import { ReactComponent as Donor } from "../../../../assets/images/patient_svgs/donor.svg"
import { ReactComponent as Currency } from "../../../../assets/images/patient_svgs/currency.svg"
import { ReactComponent as History } from "../../../../assets/images/patient_svgs/history.svg"
import { ReactComponent as Thumb } from "../../../../assets/images/patient_svgs/thumbs.svg"
import { ReactComponent as Setting } from "../../../../assets/images/patient_svgs/settings.svg"
import { ReactComponent as Logout } from "../../../../assets/images/patient_svgs/logout.svg"


const PatientSideBar = ({profile_pic, first_name}) => {
  return (
    <div class="side-bar">
      <div class="user-info">
      { profile_pic?
        <img src={profile_pic} alt="profile icon" class="sidebar-image" />
        :
        <img src={Human} alt="search icon" class="sidebar-image" />
      }
        <div class="patient-profile-info">
          <h2 class="name-text sidebar text-one"> {first_name} </h2>
          <h4 class="role-text sidebar text-two"> ID: 1</h4>
        </div>
      </div>
      <div class="sidebar-menu">
        <h3 class="menu-head first">DASHBOARD</h3>
        <ul class="menu-list">
          <li class="list-item active-item">
            <a href="#" class= "list-link">
              <Search />
              Overview
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <DocIcon className="sidebar-icons" />
              Doctor Search
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Calender  className="sidebar-icons"/>
              Appointment
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Notification className="sidebar-icons" />
              Messages
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Human className="sidebar-icons" />
              Profile
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Contact className="sidebar-icons" />
              Contact
            </a>
          </li>
        </ul>
        <h3 class="menu-head rest">MEDICAL</h3>
        <ul class="menu-list">
        <li class="list-item">
          <a href="#" class= "list-link">
            <Meication className="sidebar-icons" />
            Medications
          </a>
        </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Record className="sidebar-icons" />
              Health Records
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Lab className="sidebar-icons" />
              LAB Results
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Care className="sidebar-icons" />
              Care Plans
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Form className="sidebar-icons" />
              Forms
            </a>
          </li>
        </ul>
        <h3 class="menu-head rest">DONATION</h3>
        <ul class="menu-list">
          <li class="list-item">
            <a href="#" class= "list-link">
              <Organ className="sidebar-icons" />
              Search Organ
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Donor className="sidebar-icons" />
              Donate Organ
            </a>
          </li>
        </ul>
        <h3 class="menu-head rest">FINANCE</h3>
        <ul class="menu-list">
          <li class="list-item">
            <a href="#" class= "list-link">
              <Currency className="sidebar-icons" />
              Billing
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <History className="sidebar-icons" />
              History
            </a>
          </li>
        </ul>
        <ul class="menu-list last">
          <li class="list-item">
            <a href="#" class= "list-link">
              <Thumb className="sidebar-icons" />
              Support
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Setting className="sidebar-icons" />
              Settings
            </a>
          </li>
          <li class="list-item">
            <a href="#" class= "list-link">
              <Logout className="sidebar-icons" />
              Log Out
            </a>
          </li>
        </ul>
      </div>
    </div>
  )
}

export default PatientSideBar
