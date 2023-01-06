import ReactOnRails from "react-on-rails";

import HelloWorldApp from "../bundles/HelloWorld/startup/HelloWorldApp";
import Patient from "../bundles/Patient/component/Patient";
import DoctorSearchApp from "../bundles/DoctorSearchSidebar/startup/DoctorSearchApp";

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorldApp,
  Patient,
  DoctorSearchApp
});
