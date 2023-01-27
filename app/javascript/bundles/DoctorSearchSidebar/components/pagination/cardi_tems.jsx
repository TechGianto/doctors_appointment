import React from "react";
import DoctorCard from "../DoctorCard";
const Items = ({ currentItems, getID }) => {
  return (
    <>
      {currentItems &&
        currentItems.map((item) => (
          <DoctorCard
            key={item.doctor_id}
            rating={item.doctor_ratings}
            fullname={item.doctor_name}
            speciality={item.doctor_speciality}
            address={item.doctor_address}
            doctor_id={item.doctor_id}
            image={item.doctor_image} getID={getID} />
        ))}
    </>
  );
}

export default Items