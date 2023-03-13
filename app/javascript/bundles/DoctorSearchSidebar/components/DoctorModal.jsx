import React from "react"
import Cancel from "../../../../assets/images/svgs/cancel.svg"
import DoctorImage from "../../../../assets/images/svgs/doctor_image.svg"
import Star from "../../../../assets/images/svgs/star_icon.svg"
import RaterImage from "../../../../assets/images/svgs/first-user-comment-image.svg"
import OtherDocImage from "../../../../assets/images/svgs/similar_doc1.svg"


const DoctorModal = (props) => {
  let doctorStar= []

  const star = () => {
    for (let index = 0; index < props.doctor.doctor_ratings; index++) {
      doctorStar.push(index+1)
    }

    return doctorStar
  }

  return (
    <div className="modal fade" id="exampleModal" tabIndex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div className="modal-dialog back-color">
        <div className="modal-content">
          <div className="modal-body">
            <div className="main-container">
              <button type="button" className="cancel" data-bs-dismiss="modal">
                <img src={Cancel} alt = "cancel" className = "cancel-image" />
              </button>
              
              <div className="model-container">
                <div className="doctor-details-container">
                  <div className="doctor-image-container">
                    <img src = {props.doctor.doctor_image || DoctorImage} alt ="doctor imge" className= "doctor-image img-fluid" />
                    <div className="doctor-star-container">
                      <h5>{props.doctor.doctor_ratings}</h5>
                      <div>
                        {
                          star().map((n) => {
                            return (
                              <img src={Star} key={n} alt = "doctor star" className="doctor-star img-fluid" />
                            )
                          })
                        }
                      </div>
                    </div>
                  </div>
                  <div>
                    <div className="doctor-name">
                      <h1>{props.doctor.doctor_name}</h1>
                      <h3>{props.doctor.doctor_speciality[0].name}</h3>
                    </div>

                    <div className="doctor-details">
                      <div className="left">
                        <h5 className="location">{props.doctortor_address}
                        </h5>

                        <div className="biography">
                          <h1 className="about-doctor">Biography</h1>
                          <div>
                            <p className="location">
                              A board certified pediatrician at the
                              Centre for Children and Women - 
                              Green spoint.
                              <br/><br/>
                              She completed her medical training
                              at the Lagos State University
                              School of Medicaine in Ikeja.
                              <br/><br/>
                              A board certified pediatrician at the
                              Centre for Children and Women - 
                              Green spoint.
                              She completed her medical training
                              at the Lagos State University
                              School of Medicaine in Ikeja.
                            </p>
                          </div>
                        </div>
                      </div>
                      <div className="right">
                        <div>
                          <h1 className="about-doctor">Speciality</h1>
                          <div className="specialites">
                            {
                              props.doctor.doctor_speciality.map((s) => {
                                return (<div className="speciality" key={s.id}>{s.name}</div>)
                              })
                            }
                          </div>
                        </div>

                        <div>
                          <h1 className="about-doctor">Experience</h1>
                          <p className="location">25 Years</p>
                        </div>

                        <div>
                          <h1 className="about-doctor">Language</h1>
                          <p className="location">English, Yoruba</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="user-testemonials">
                  <h1 className="about-doctor">Testimonials</h1>
                  <div className="user-responds d-flex align-items-center justify-content-between">
                    <div className="comments d-flex align-items-center">
                      <img src={RaterImage} alt = "first user" className = "user-image" />
                      <div>
                        <h3>Tunde Mariam</h3>
                        <p className="location">
                        My experience with  Dr. Adekunle is superb. 
                        Very calm and will always answer your every questions. 
                        She is good at her.
                        </p>
                      </div>
                    </div>
                    <div className="comments d-flex align-items-center">
                      <img src={RaterImage} alt = "first user" className = "user-image" />
                      <div>
                        <h3>Tunde Mariam</h3>
                        <p className="location">
                        My experience with  Dr. Adekunle is superb. 
                        Very calm and will always answer your every questions. 
                        She is good at her.
                        </p>
                      </div>
                    </div>
                    <a className="appointment-btn" href={`/patient/appointment/${props.doctor.doctor_id}`}>
                      Book Appointment
                    </a>
                  </div>
                </div>
                <hr/>
                <div className="other-doctor">
                  <h1>Other Paedriatric surgeons</h1>
                  <div className="similar-doctor-container">
                    <div className="similar-doc">
                      <img src = {OtherDocImage} alt = "first doctor" className = "similar-doc-image" />
                      <div className="doctor-rating" style={{ background: "#D4AF37" }}>
                        <img src={Star} alt = "doctor star" className="doctor-star img-fluid" />
                        <span>5.0</span>
                      </div>
                      <div className="discription">
                        <h1>Dr. Akinon Jumba</h1>
                        <h3>Senior  Cardiologist</h3>
                        <p>AB Pharmaceuticals Ltd (CPN NEXUS) Rumoudara, Port-Harcourt</p>
                      </div>
                      <button>View Profile</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}


export default DoctorModal
