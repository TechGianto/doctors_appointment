/* eslint-disable import/prefer-default-export */

import { DOCTORS } from "../constants/SideBarConstants";

export const updateDocotor = (doctors) => ({
  type: DOCTORS,
  doctors,
});