import React from 'react'
import { SvgIcon } from '@mui/material';

const Svg = ({ classN, Icons }) => {
  return (
    <img src={Icons} className={classN} alt="icon" />
  )
}

export default Svg