import React from 'react'
import Doc from "../../../../assets/images/patient_svgs/doc.svg"
import Locations from "../../../../assets/images/patient_svgs/location.svg"
import Search from "../../../../assets/images/patient_svgs/search.svg"
import Appointment from "../../../../assets/images/patient_svgs/appointment.svg"
import Activity from "../../../../assets/images/patient_svgs/activity.svg"
import Medical from "../../../../assets/images/patient_svgs/medical.svg"
import Vitalone from "../../../../assets/images/patient_svgs/vitalone.svg"
import Vitaltwo from "../../../../assets/images/patient_svgs/vitalstwo.svg"
import VitalThree from "../../../../assets/images/patient_svgs/vitalsthree.svg"
import VitalFour from "../../../../assets/images/patient_svgs/vitalsfour.svg"
import Billing from "../../../../assets/images/patient_svgs/billing.svg"


const Overview = () => {
  return (
    <div className="patient-handle">
      <div className="patient-search-options">
        <div className ="search-design end">
          <img src={Doc} alt="search icon" className="sidebar-icons" />
          <select className="form-select speciality" aria-label=".form-select example">
            <option selected>Speciality</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
          </select>
        </div>
        <div className ="search-inputs">
          <input type="text" className="form-control" placeholder="Search Doctors" aria-label="" />
        </div>
        <div className ="search-design">
          <img src={Locations} alt="message" />
          <select className="form-select " aria-label=".form-select example">
            <option selected>Speciality</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
          </select>
        </div>
        <button className="submit-btn">
          <img src={Search} alt="search icon" className="sidebar-icons" />
        </button>
      </div>
      <div className="greeting">
        <h1>Welcome Wasiu</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget risus maecenas</p>
      </div>
      <div className="appointment-activities">
        <div className="appointment">
          <h2>Next Appointment</h2>
          <div className="appointment-info">
            <h4>Your next appointment will appear hear</h4>
            <img src={Appointment} alt="appointment icon" className="info-icon" />
            <button type="button" className="btn">Book Appointment</button>
          </div>
        </div>
        <div className="activities">
          <h2>Recent Activities</h2>
          <div className="activity-info">
            <h4>Your next recent activities will appear hear</h4>
            <img src={Activity} alt="appointment icon" className="info-icon" />
            <div className="lower-part"></div>
          </div>
        </div>
      </div>
      <div className="health">
        <div className="medications">
          <h2>Current Medications</h2>
          <div className="medication-info">
            <h4>Your medications will appear hear</h4>
            <img src={Medical} alt="appointment icon" className="info-icon" />
          </div>
        </div>
        <div className="vitals">
          <h2>Vitals</h2>
          <div className="vitals-info">
            <div className="vitals-info-one">
              <div className="vital-one">
                <img src={Vitalone} alt="appointment icon" className="one" />
                <h4>Blood Pressure</h4>
              </div>
              <div className="vital-two">
                <img src={Vitaltwo} alt="appointment icon" className="two" />
                <h4>Blood Group</h4>
              </div>
            </div>
            <div className="vitals-info-two">
              <div className="vital-three">
                <img src={VitalThree} alt="appointment icon" className="three" />
                <h4>Weight</h4>
              </div>
              <div className="vital-four">
                <img src={VitalFour} alt="appointment icon" className="four" />
                <h4>Age</h4>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="billings">
        <h2>Recent Bills</h2>
        <div className="billings-info">
          <h4>Your recent bills will appear hear</h4>
          <img src={Billing} alt="appointment icon" className="billing-icon" />
        </div>
      </div>
    </div>
  )
}

export default Overview