class PatientController < ApplicationController
  before_action :require_login, only: [:index]
  layout 'patient'

  def index
    speciality = Speciality.all
    location = User.with_role(:Doctor).pluck(:state)

    if current_user.profile_pic.attached?
      picture = url_for(current_user.profile_pic).to_s
    else
      picture = 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg'
    end
    @patient_header_props = {profile_pic: picture, first_name: current_user.first_name.to_s, roles: current_user.roles[0].name.to_s, signed_in: user_signed_in?, id: current_user.id, speciality: speciality, location: location}
  end
end
