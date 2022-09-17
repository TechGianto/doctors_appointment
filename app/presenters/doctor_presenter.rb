class DoctorPresenter < SimpleDelegator

  delegate :full_name, :profile_pic, to: :user

  def show_card_details
    {
      doctor_id: id,
      doctor_name: full_name,
      doctor_address: hospital_address,
      doctor_ratings: doctor_rate,
      doctor_image: Rails.application.routes.url_helpers.rails_blob_path(profile_pic, only_path: true),
      doctor_speciality: specialities.first,
    }
  end
end
