class PatientController < ApplicationController
  before_action :require_login, only: [:index]
  layout 'patient'

  def index
    @patient_header_props = {profile_pic: url_for(current_user.profile_pic).to_s, first_name: current_user.first_name.to_s, roles: current_user.roles[0].name.to_s, signed_in: user_signed_in?, id: current_user.id}
  end
end
