import { createStore } from "redux"
import DoctorSearchAppReducer from "../reducers/DoctorSearchAppReducer";

const configureStore = (railsProps) => createStore(DoctorSearchAppReducer, railsProps);

export default configureStore;