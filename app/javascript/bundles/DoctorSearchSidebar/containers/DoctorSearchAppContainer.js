// Simple example of a React "smart" component

import { connect } from "react-redux";
import * as actions from "../actions/SideBarActionCreators";
import DoctorsSearchPage from "../components/DoctorsSearchPage";

// Which part of the Redux global state does our component want to receive as props?
const mapStateToProps = (state) => ({
  regions: state.regions,
  states: state.states,
  specialities: state.specialities,
  qualifications: state.qualifications,
  doctors: state.doctors,
  total_pages: state.total_pages,
});

// Don't forget to actually use connect!
// Note that we don't export HelloWorld, but the redux "connected" version of it.
// See https://github.com/reactjs/react-redux/blob/master/docs/api.md#examples
export default connect(mapStateToProps, actions)(DoctorsSearchPage);
