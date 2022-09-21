class PatientController < ApplicationController
  before_action :require_login, only: [:index]
  layout 'patient'

  def index
    @medications = PatientMedication.patient_medication_for_today(current_user)
    @appointment = current_user.appointments.status_accepted.first
    @vital = current_user.user_vital

    if current_user.appointments.present?
      @start_time = @appointment.date_of_appointment 
      @end_time = @appointment.date_of_appointment + (@appointment.no_of_session * 30).minutes
      @speciality = @appointment.doctor.doctor_specialities.map(&:speciality).map(&:name)
    end

  end
end
