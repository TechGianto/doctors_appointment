/* eslint-disable import/prefer-default-export */

import { DOCTORS, TOTAL_PAGES } from "../constants/SideBarConstants";

export const updateDoctor = (doctors) => ({
  type: DOCTORS,
  doctors,
});

export const updateTotalPage = (total_pages) => ({
  type: TOTAL_PAGES,
  total_pages,
});