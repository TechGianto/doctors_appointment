import React, {useState} from "react"
import Doc from "../../../../assets/images/patient_svgs/doc.svg";
import Locations from "../../../../assets/images/patient_svgs/location.svg";
import Search from "../../../../assets/images/header_svgs/search.svg";
import axios from "axios";

const SearchOption = ({ speciality, location }) => {
  const [options, setOption] = useState({
    doctor_speciality: "",
    doctor_name: "",
    locations: "",
  })
  const handleChange = e => {
    const { name, value } = e.target;
    setOption(prevState => ({
      ...prevState,
      [name]: value
    }));
  };

  const filter = async () => {
    const reponse = await axios.get("/filter",
      {
        headers: { "Content-Type": "application/json", "Accept": "application/json" },
        params: {
          doctor_speciality: options.doctor_speciality,
          doctor_name: options.doctor_name,
          location: options.locations
        }
      }
    )

    console.log(reponse)
  }

  console.log(options)
  return (
    <div className="patient-search-options">
      <div className ="search-design end">
        <img src={Doc} alt="search icon" className="sidebar-icons" />
        <select className="form-select speciality" name="doctor_speciality" onChange={handleChange} aria-label=".form-select example">
          <option defaultValue>Speciality</option>
          {
            speciality.map(s => {
              return <option value={s.name} key={s.name}>{ s.name }</option>
            })
          }
        </select>
      </div>
      <div className ="search-inputs">
        <input type="text" className="form-control" name="doctor_name" onChange={handleChange} placeholder="Search Doctors" aria-label="" />
      </div>
      <div className ="search-design">
        <img src={Locations} alt="message" />
        <select className="form-select " name="locations" onChange={handleChange} aria-label=".form-select example">
          <option defaultValue>Locations</option>
          {
            location.map(l => {
              return <option value={l.state} key={l.state}>{ l.state }</option>
            })
          }
        </select>
      </div>
      <button className="submit-btn" onClick={() => filter()} >
        <img src={Search} alt="search icon" className="sidebar-icons" />
      </button>
    </div>
  )
}

export default SearchOption