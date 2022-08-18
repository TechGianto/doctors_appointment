import React from 'react'
import Logo from "../../../../assets/images/header_svgs/logo.svg"
import Bell from "../../../../assets/images/patient_svgs/bell.svg"
import NotificationIcon from "../../../../assets/images/patient_svgs/notification.svg"
import Human from "../../../../assets/images/patient_svgs/human.svg"
import Search from "../../../../assets/images/header_svgs/search.svg"
import UserLogout from "../../../../assets/images/header_svgs/user-logout.svg"
import LoginIcon from "../../../../assets/images/header_svgs/green-user.svg"
import RegisterIcon from "../../../../assets/images/header_svgs/purple-user.svg"


const PatientHeader = ({ profile_pic, first_name, roles, signed_in }) => {
  return (
    <nav className=" navbar navbar-expand-xl sticky-top navbar-light bg-light">
      <div className="container-fluid">
        <a className="navbar-brand text-center" href="\" >
          <img src={Logo} alt="logo" className="main-logo" />
        </a>
        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse nav-bar-destop navbar-collapse" id="navbarTogglerDemo01" >
          <div className="d-flex ms-auto justify-content-center align-items-center">
            <div className="notification">
              <img src={Bell} alt= "bell icon" className= "patient-nav-icon" />
              <span class="position-absolute translate-middle bg-success rounded-circle circle">1</span>
            </div>

            <div class="notification">
              <img src={NotificationIcon} alt="notification icon" className="patient-nav-icon" />
              <span className="position-absolute translate-middle bg-success rounded-circle circle"> 2 </span>
            </div>

            <div className="dropdown">
              <div className="dropdown-toggle display" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                { profile_pic?
                  <img src={profile_pic} alt="profile icon" class="profile-nav-pic" />
                  :
                  <img src={Human} alt="search icon" class="profile-nav-pic" />
                }
                <div class="patient-profile-info">
                  <h2 class="name-text">{first_name}</h2>
                  <h4 class="role-text">{roles}</h4>
                </div>
              </div>

              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </div>
          </div>
          <div class=" nav-item mobile-path">
            <div class="search-container">
              <img src={Search} alt="logo" class="search-icon mobile-icon img-responsive" />
            </div>

            {
              signed_in ? 
                <a href='#' class="mobile-login-btn">
                  <img src={UserLogout} alt="logout" class="auth-user-icon" />
                  <h3 class="mobile-icon">SignOut</h3>
                </a>
                :
                <div>
                  <a href="#" class="mobile-login-btn">
                    <img src={LoginIcon} alt="login" class="auth-user-icon" />
                    <h3 class="mobile-icon">Login</h3>
                  </a>
                  <a href="#" class="mobile-login-btn">
                    <img src={RegisterIcon} alt="regiser" class="auth-user-icon" />
                    <h3 class="mobile-icon">Register</h3>
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