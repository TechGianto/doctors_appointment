import ReactOnRails from 'react-on-rails';

import SideBarApp from '../bundles/DoctorSearchSidebar/startup/SideBarApp';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  SideBarApp,
});
