import React from "react"
import PatientAsset from "./PatientAsset"


const PatientHeader = ({ profile_pic, first_name, roles, signed_in }) => {
  const {Logo, Bell, NotificationIcon, HumanIcon, Search, UserLogout, LoginIcon, RegisterIcon} = PatientAsset
  return (
    <nav className=" navbar navbar-expand-xl sticky-top navbar-light bg-light">
      <div className="container-fluid">
        <a className="navbar-brand text-center" href="/" >
          <img src={Logo} alt="logo" className="main-logo" />
        </a>
        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse nav-bar-destop navbar-collapse" id="navbarTogglerDemo01" >
          <div className="d-flex ms-auto justify-content-center align-items-center">
            <div className="notification">
              <img src={Bell} alt= "bell icon" className= "patient-nav-icon" />
              <span className="position-absolute translate-middle bg-success rounded-circle circle">1</span>
            </div>

            <div className="notification">
              <img src={NotificationIcon} alt="notification icon" className="patient-nav-icon" />
              <span className="position-absolute translate-middle bg-success rounded-circle circle"> 2 </span>
            </div>

            <div className="dropdown">
              <div className="dropdown-toggle display" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                { profile_pic?
                  <img src={profile_pic} alt="profile icon" className="profile-nav-pic" />
                  :
                  <img src={HumanIcon} alt="search icon" className="profile-nav-pic" />
                }
                <div className="patient-profile-info">
                  <h2 className="name-text">{first_name}</h2>
                  <h4 className="role-text">{roles}</h4>
                </div>
              </div>

              <ul className="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a className="dropdown-item" href="/">Action</a></li>
                <li><a className="dropdown-item" href="/">Another action</a></li>
                <li><a className="dropdown-item" href="/">Something else here</a></li>
              </ul>
            </div>
          </div>
          <div className=" nav-item mobile-path">
            <div className="search-container">
              <img src={Search} alt="logo" className="search-icon mobile-icon img-responsive" />
            </div>

            {
              signed_in ? 
                <a href='<%= destroy_user_session_path %>' className="mobile-login-btn">
                  <img src={UserLogout} alt="logout" className="auth-user-icon" />
                  <h3 className="mobile-icon">SignOut</h3>
                </a>
                :
                <div>
                  <a href='<%= new_user_session_path%>' className="mobile-login-btn">
                    <img src={LoginIcon} alt="login" className="auth-user-icon" />
                    <h3 className="mobile-icon">Login</h3>
                  </a>
                  <a href="<%= new_user_registration_path %>" className="mobile-login-btn">
                    <img src={RegisterIcon} alt="regiser" className="auth-user-icon" />
                    <h3 className="mobile-icon">Register</h3>
                  </a>
                </div>
            }
          </div>
        </div>
      </div>
    </nav>
  )
}

export default PatientHeader