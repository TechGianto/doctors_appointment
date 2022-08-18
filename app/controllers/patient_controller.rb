class PatientController < ApplicationController
  before_action :require_login, only: [:index]
  layout 'patient'

  def index
    signed_in = false
    if user_signed_in?
      signed_in = true
    end
    @patient_header_props = {profile_pic: url_for(current_user.profile_pic).to_s, first_name: current_user.first_name.to_s, roles: current_user.roles[0].name.to_s, signed_in: signed_in}
  end
end
