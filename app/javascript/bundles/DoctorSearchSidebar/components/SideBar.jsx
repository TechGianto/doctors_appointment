import PropTypes from 'prop-types';
import React, {useState} from 'react';

const SideBar = ({ regions, states, specialities, qualifications }) => {

  let [state, setState] = useState("")
  let [region, setRegion] = useState("")
  let [gender, setGender] = useState("")

  const handleStateChange = (event) =>{
    console.log(event)
    setState( event.target.value)
  }

  const handleRegionChange = (event) =>{
    console.log(event)
    setRegion( event.target.value)
  }

  const handleGenderChange = (event) =>{
    console.log(event)
    setRegion( event.target.value)
  }

  return (<div className="search-sidebar d-flex flex-column flex-shrink-0">
      <div className='search-filter' id="search-filter">
        <div className="filter-wrap" id="filter-wrap">
            <div className="filter-icon-container" id="filter-icon-container">
                {/* <%=image_tag('search/filter-icon.svg', alt: "filter icon", class:"filter-icon") %>
                <%=image_tag('search/filter-icon.svg', alt: "filter icon", class:"filter-icon-expand") %> */}
            </div>
            <div className="filter-text" id="filter-text">
                Filter
            </div>
        </div>
    </div>
    <form className='filter-form'>
    <h6>State</h6>
    <select value={state} onChange={handleStateChange} className="form-select filter-form-select" aria-label="Default select example">
        {states.map(userstate => <option key={userstate.state} value={userstate.state}>{userstate.state}</option>)}
      </select>

      <h6>Region</h6>
      <select value={region} onChange={handleRegionChange} className="form-select filter-form-select" aria-label="Default select example">
        {regions.map(userregion => <option key={userregion.LGA} value={userregion.LGA}>{userregion.LGA}</option>)}
      </select>

      <h6>Speciality</h6>
        <div className='filter-speciality'>
            <input type="text" placeholder="Search speciliality" className='header form-control'/>
            <div className="p-2">
            {specialities.map(userspeciality => 
                <div className="form-check" key={userspeciality.name}>
                        <input className="form-check-input" type="checkbox" value={userspeciality.name} id={userspeciality.name}/>
                        <label className="form-check-label" htmlFor={userspeciality.name}>
                        {userspeciality.name} </label>
                    </div>)}
            </div>
        </div>

        <h6>Qualifications</h6>
        <div className='filter-speciality'>
            <input type="text" placeholder="Search qualifications" className='header form-control'/>
            <div className="p-2">
            {qualifications.map(userqualifications => 
                <div className="form-check" key={userqualifications.name}>
                        <input className="form-check-input" type="checkbox" value={userqualifications.name} id={userqualifications.name}/>
                        <label className="form-check-label" htmlFor={userqualifications.name}>
                        {userqualifications.name} </label>
                    </div>)}
            </div>
        </div>

        <h6>Gender</h6>
        <select value='Select Gender' onChange={handleGenderChange} className="form-select filter-form-select" aria-label="Default select example">
             <option value="Male">Male</option>
             <option value="Female">Female</option>    
        </select>
    </form>
  </div>);
}

SideBar.propTypes = {
  states: PropTypes.array.isRequired,
  regions: PropTypes.array.isRequired,
  specialities: PropTypes.array.isRequired,
  qualifications: PropTypes.array.isRequired,
};
SideBar.defaultProps ={
  states: [],
  region: [],
  specialities: [],
  qualifications: [],
}
export default SideBar;
