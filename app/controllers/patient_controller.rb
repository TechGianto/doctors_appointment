class PatientController < ApplicationController
  before_action :require_login, only: [:index]
  layout 'patient'

  def index
    puts "profile image asdfgdfsefd"
    puts current_user.profile_pic
    @patient_header_props = {profile_pic: current_user.profile_pic.to_s, first_name: current_user.first_name.to_s, roles: current_user.roles[0].name.to_s}
  end
end
