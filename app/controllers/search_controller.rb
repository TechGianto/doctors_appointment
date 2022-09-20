class SearchController < ApplicationController
  before_action :require_login, only: [:index, :show]
  before_action :set_doctor, only: %i[show]
  before_action :doctor_search, only: %i[index filter]

  def index
    @specialities ||= Speciality.first(10)
    @user_states ||= User.select(:state).distinct.order(state: :asc)
    @user_regions ||= User.select(:LGA).distinct.order(LGA: :asc)
    @user_qualifications ||= Qualification.select(:name).order(name: :asc)
    page = params['page'] || 1
    @result = Doctor.includes(
      :user,
      :doctor_ratings,
      :specialities,
      user: [:profile_pic_attachment, :profile_pic_blob],
    ).approved.page(page).per(5)
    @doctors = @result.map { |doctor| DoctorPresenter.new(doctor).show_card_details }
    respond_to do |format|
      format.html
      format.json do
        render json: {doctors: @doctors}.to_json
      end
    end
    @side_bar_props = { regions: @user_regions, states: @user_states, specialities: @specialities, qualifications: @user_qualifications, doctors: @doctors, total_pages: @result.total_count }
  end

  def show
    @result = Doctor.includes(
      :user,
      :doctor_ratings,
      :specialities,
      user: [:profile_pic_attachment, :profile_pic_blob],
    ).find_by(id: params[:id])
    @doctors = DoctorPresenter.new(@result).show_full_details
    respond_to do |format|
      format.html
      format.json do
        render json: {doctors: @doctors}.to_json
      end
    end
  end

  def filter
    page = params['page'] || 1
    @doctors = @result.where(specialities: {name: [params['doctor_speciality']]}).page(page).per(5)
    if params['location'] != ''
      @doctors = @result.where(specialities: {name: [params['doctor_speciality']]}, user: {state: [params['location']]}).page(page).per(5)
    end
    respond_to do |format|
      format.html
      format.json do
        render json: {doctors: @doctors}.to_json
      end
    end
  end

  private

  def doctor_search
    @result = Doctor.includes(
      :user,
      :doctor_ratings,
      :specialities,
      user: [:profile_pic_attachment, :profile_pic_blob],
    ).approved
  end

  def set_doctor
    @friend = Doctor.find(params[:id])
  end

end
