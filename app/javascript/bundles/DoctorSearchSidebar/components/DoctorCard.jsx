import React from "react";
import image from "../../../../assets/images/doctor_svgs/democard.svg";
import rating from "../../../../assets/images/doctor_svgs/star-white.svg";

const DoctorCard = (props) => {
  return (
    <div className="doctor-card">
      <div className="doctor-rating">
        <img src={rating} className="doctor-rating-img" alt="..." />
        <span className="rating-value">{props.rating}</span>
      </div>
      <img src={props.image} className="doctor-card-img img-fluid" alt="..." />
      <div className="card-body">
        <h5 className="card-title">{props.fullname}</h5>
        <h6 className="doctor-speciality">{props.speciality}</h6>
        <p className="card-text">
        {props.address}
        </p>
      </div>
      <div className="card-btn">
        <a href="/trash"
          className="btn-profile"
          type="button"
          data-bs-toggle="modal"
          data-bs-target="#exampleModal">
          Profile
        </a>
        <a href="qwertyui" className="btn-appiontment">
          Book Appointment
        </a>
      </div>
    </div>
  );
};
export default DoctorCard;
