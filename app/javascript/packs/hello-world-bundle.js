import ReactOnRails from "react-on-rails";

import HelloWorldApp from "../bundles/HelloWorld/startup/HelloWorldApp";
import PatientHeader from "../bundles/Patient/component/PatientHeader";
import Overview from "../bundles/Patient/component/Overview";
import PatientSideBar from "../bundles/Patient/component/PatientSidebar";

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorldApp,
  PatientHeader,
  PatientSideBar,
  Overview,
});
