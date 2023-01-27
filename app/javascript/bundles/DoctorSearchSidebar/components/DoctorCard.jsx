import React from "react";
import rating from "../../../../assets/images/doctor_svgs/star-white.svg";

const DoctorCard = (props) => {
  return (
    <div className="doctor-card">
      <div className="doctor-rating">
        <img src={rating} className="doctor-rating-img" alt="..." />
        <span className="rating-value">{props.rating}</span>
      </div>
      <div class="cicular-bar" style={{ "--col": "#19B698", "--num": props.rating * 20}}>
        <div style={{ backgroundImage: `url(${props.image})`}} className="doctor-card-img" alt="...">
        </div>
        <span className="dot"></span>
        <svg>
          <circle cx={70} cy={70} r={70} />
          <circle cx={70} cy={70} r={70} />
        </svg>
      </div>
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
          data-bs-target="#exampleModal"
          onClick={() => props.getID(props.doctor_id)}>
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
