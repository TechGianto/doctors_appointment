class SearchController < ApplicationController
  before_action :require_login, only: [:index]

  def index
    @specialities ||= Speciality.first(10)
    @user_states ||= User.select(:state).distinct.order(state: :asc)
    @user_regions ||= User.select(:LGA).distinct.order(LGA: :asc)
    @user_qualifications ||= Qualification.select(:name).order(name: :asc)
    page = params['page'] || 1
    result = Doctor.includes(
      :user,
      :doctor_ratings,
      :doctor_specialities,
      doctor_specialities: :speciality,
      user: [:profile_pic_attachment, :profile_pic_blob],
    ).approved.page(page).per(5)
    @doctors = result.map { |doctor| DoctorPresenter.new(doctor).show_card_details }
    respond_to do |format|
      format.html
      format.json do
        render json: {doctors: @doctors}.to_json
      end
    end
    @side_bar_props = { regions: @user_regions, states: @user_states, specialities: @specialities, qualifications: @user_qualifications, doctors: @doctors, total_pages: result.total_count }
  end

end
