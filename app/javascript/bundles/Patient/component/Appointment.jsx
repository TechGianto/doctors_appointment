import React, { Suspense, useEffect, useState } from "react"
import { useCalendlyEventListener, InlineWidget } from "react-calendly";
import { useParams } from "react-router-dom";
import DoctorRequest from "../../DoctorSearchSidebar/request";

const Appointment = ({ user }) => {
  const [scheduleLink, setScheduleLink] = useState("")
  const params = useParams();

  useEffect( () => {
    const data = DoctorRequest.getDoctor(params.doctor_id)
    console.log(user)
    setScheduleLink("https://calendly.com/etajuder/30min?month=2023-01?hide_gdpr_banner=1")
  }, [scheduleLink])

  return (
    <div className="patient-handle">
      <Suspense fallback={<div> Loading... </div>}>
        <InlineWidget
          url={scheduleLink}
          styles={{
            height: '80%',
            width: '100%'
          }}
          prefill={{
            name: `${user.first_name} ${user.last_name}`,
            firstName: user.first_name,
            lastName: user.last_name,
            email: user.email,
          }}
          pageSettings={{
            hideLandingPageDetails: true,
            hideEventTypeDetails: true,
          }}
        />
      </Suspense>
    </div>
  )
}

export default Appointment
