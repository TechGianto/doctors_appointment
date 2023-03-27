import React from "react";
import PatientAssets from "./PatientAsset";


const HealthRecord = (props) => {
  const { HumanInner, HeartWave, Mcad, Download, Share, Print, BigHeartWave } = PatientAssets
  return (
    <div className="d-flex flex-column w-100 py-3 px-5">
      <h2 className="header-2 mb-2">Health Details and History</h2>
      <div className="d-flex gap-3 mb-3">
        <img src={HumanInner} alt="human inner" className="img-fluid w-50 flex-1" />
        <div className="flex-1 bg-green-primary border-radius-16 d-flex align-items-center position-relative  justify-content-center color-white">
          <h3 className="z-3 d-block">ID: {props.id * 2346567}</h3>
          <img src={HeartWave} alt="heart wave" className=" z-1 position-absolute img-fliud top-50 position-left-11 w-50" />
          <img src={Mcad} alt="mcad" className="img-fluid position-absolute top-50 position-right-11 w-50" />
        </div>
      </div>
      <span className="w-100 line-divider my-4 "></span>
      <div className="medical-detail">
        <h1 className="health-record-h1 mb-3">Medical Details</h1>
        <h3 className="health-record-h3 mb-3">Name:<span className="health-record-data"> {props.last_name} {props.first_name} {props.middle_name}</span></h3>
        <ul className="d-flex align-items-center gap-4 list-unstyled w-100 mb-3">
          <li className="health-record-h3">Age:<span className="health-record-data">18</span> </li>
          <li className="health-record-h3">Blood Group:<span className="health-record-data">O+</span></li>
          <li className="health-record-h3">Genotype:<span className="health-record-data">AA</span></li>
          <li className="health-record-h3">Blood Presure:<span className="health-record-data">120/80</span></li>
        </ul>
        <ul className="d-flex align-items-center gap-4 flex-wrap list-unstyled w-100 mb-3">
          <li className="health-record-h3">Weight:<span className="health-record-data"> 72Kg</span></li>
          <li className="health-record-h3">Height:<span className="health-record-data"> 5.7Feet</span></li>
          <li className="health-record-h3">Sex:<span className="health-record-data"> Male</span></li>
          <li className="health-record-h3 flex-nowrap">Drug Allergies:<span className="health-record-data">
            {" "}
            <span className="d-flex gap-1">
              <span className="p-1 drug-allergies-color">Insulin</span>
              <span className="p-1 drug-allergies-color">Aspirin</span>
              <span className="p-1 drug-allergies-color">Insulin</span>
              <span className="p-1 drug-allergies-color">Aspirin</span>
              <span className="p-1 drug-allergies-color">Insulin</span>
              <span className="p-1 drug-allergies-color">Aspirin</span>
            </span>
          </span></li>
        </ul>
      </div>
      <span className="w-100 line-divider my-4 "></span>
      <div className="health-record">
        <h1 className="health-record-h1 mb-3">Medical Details</h1>
        <ul className="d-block list-unstyled w-100 mb-3">
          <li className="health-record-h3 mb-3">Current Health Condition: <span className="p-1 font-8 health-record-data drug-allergies-color">
          ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim  
          </span></li>
          <li className="health-record-h3 non mb-3">Current Medications: <span className="health-record-data">
            {" "}
            <span className="d-flex gap-2">
              <span className="p-1 drug-allergies-color">Insulin</span>
              <span className="p-1 drug-allergies-color">Aspirin</span>
            </span>
          </span></li>
          <li className="health-record-h3 mb-3">Other Illness:<span className="health-record-data">Pile</span></li>
          <li className="health-record-h3 mb-3">Exercise:<span className="health-record-data">5+ Days</span></li>
          <li className="health-record-h3 mb-3">Alcohol Consumption:<span className="health-record-data">1-2 bottles per day</span></li>
          <li className="health-record-h3 mb-3">Caffeine Consumption:<span className="health-record-data">1-2 Cups/day</span></li>
          <li className="health-record-h3 mb-3">Other Comments: <span className="health-record-data">
          I fell down from the back of my mom when i was 38 years old. Ever since then, my back has been painging me seriously.
          </span></li>
        </ul>
      </div>

      <div className="share d-flex gap-4 md-100 width-200 justify-content-center align-items-center border p-2 border-{#898989}">
        <img src={Share} alt="" className="img-fluid cu" />
        <img src={Download} alt="" className="img-fluid" />
        <img src={Print} alt="" className="img-fluid" />
      </div>

      <div className="d-flex flex-row-reverse">
        <img src={BigHeartWave} alt="" className="img-fluid w-50 mt-2" />
      </div>
    </div>
  )
}

export default HealthRecord