class DoctorPresenter < ActionController::Base
  def initialize(doctor)
    @doctor = doctor
  end

  def show_card_details
    {
      doctor_id: @doctor.id,
      doctor_name: @doctor.user.full_name,
      doctor_address: @doctor.hospital_address,
      doctor_ratings: @doctor.doctor_rate,
      doctor_image: url_for(@doctor.user.profile_pic).to_s,
      doctor_speciality: @doctor.specialities.first,
    }
  end
end
