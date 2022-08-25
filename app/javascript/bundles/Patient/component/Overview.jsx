import React, { useState } from 'react'
import PatientAsset from './PatientAsset'


const Overview = ({ speciality, location }) => {
  const {
    Doc, Locations, Search, Appointment, Activity, Medical,
    Vitaltwo, Billing, VitalFour, VitalThree, Vitalone
  } = PatientAsset
  const [options, setOption] = useState({
    doctor_speciality: "",
    doctor_name: "",
    doctor_location: "",
  })
  const handleChange = e => {
    const { name, value } = e.target;
    setOption(prevState => ({
        ...prevState,
        [name]: value
    }));
};
  console.log(options)
  return (
    <div className="patient-handle">
      <div className="patient-search-options">
        <div className ="search-design end">
          <img src={Doc} alt="search icon" className="sidebar-icons" />
          <select className="form-select speciality" name="doctor_speciality" onChange={handleChange} aria-label=".form-select example">
            <option defaultValue>Speciality</option>
            {
              speciality.map(s => {
                return <option value={s.name}>{ s.name }</option>
              })
            }
          </select>
        </div>
        <div className ="search-inputs">
          <input type="text" className="form-control" name='doctor_name' onChange={handleChange} placeholder="Search Doctors" aria-label="" />
        </div>
        <div className ="search-design">
          <img src={Locations} alt="message" />
          <select className="form-select " name='doctor_location' onChange={handleChange} aria-label=".form-select example">
            <option defaultValue>Locations</option>
            {
              location.map(l => {
                return <option value={l}>{ l }</option>
              })
            }
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