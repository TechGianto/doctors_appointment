class PatientController < ApplicationController
  before_action :require_login, only: [:index]
  layout 'patient'

  def index
    @speciality ||= Speciality.all
    @location ||= User.with_role(:Doctor).pluck(:state, :id)
    @medications ||= patient.medication_for_today
    if current_user.profile_pic.attached?
      picture = url_for(current_user.profile_pic).to_s
    else
      picture = ''
    end
    @patient_header_props = {
      profile_pic: picture,
      first_name: current_user.first_name.to_s,
      roles: current_user.roles[0].name.to_s,
      signed_in: user_signed_in?, id: current_user.id,
      speciality: @speciality, location: @location,
      medications: @medications,
    }
  end
end
