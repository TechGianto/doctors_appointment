import { combineReducers } from "redux";
import { STATES, REGIONS, SPECIALITIES, QUALIFICATIONS, DOCTORS, TOTAL_PAGES } from "../constants/SideBarConstants";

const regions = (state = "", action) => {
  switch (action.type) {
  case REGIONS:
    return action.text;
  default:
    return state;
  }
};

const states = (state = "", action) => {
  switch (action.type) {
  case STATES:
    return action.text;
  default:
    return state;
  }
};

const specialities = (state = "", action) => {
  switch (action.type) {
  case SPECIALITIES:
    return action.text;
  default:
    return state;
  }
};

const qualifications = (state = "", action) => {
  switch (action.type) {
  case QUALIFICATIONS:
    return action.text;
  default:
    return state;
  }
};

const doctors = (state = "", action) => {
  switch (action.type) {
  case DOCTORS:
    return action.doctors;
  default:
    return state;
  }
};

const total_pages = (state = "", action) => {
  switch (action.type) {
  case TOTAL_PAGES:
    return action.text;
  default:
    return state;
  }
};
const DoctorSearchAppReducer = combineReducers({ regions, states, specialities, qualifications, doctors, total_pages });

export default DoctorSearchAppReducer;
