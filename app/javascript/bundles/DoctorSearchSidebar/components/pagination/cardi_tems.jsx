import React from "react";
import DoctorCard from "../DoctorCard";
const Items = ({ currentItems }) => {
  return (
    <>
    {currentItems &&
      currentItems.map((item) => (
        <DoctorCard 
            key={item.doctor_id}
            rating= {item.doctor_ratings}
            fullname = {item.doctor_name}
            speciality = {item.doctor_speciality }
            address = { item.doctor_address}
            image = {item.doctor_image} />
      ))}
    </>
  );
}

export default Items