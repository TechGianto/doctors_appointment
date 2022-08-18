import ReactOnRails from "react-on-rails";

import HelloWorldApp from "../bundles/HelloWorld/startup/HelloWorldApp";
import PatientHeader from "../bundles/Patient/component/PatientHeader";

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorldApp,
  PatientHeader,
});
