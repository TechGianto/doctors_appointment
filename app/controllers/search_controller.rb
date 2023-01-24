class SearchController < ApplicationController
  before_action :require_login, only: [:index, :show]
  before_action :set_doctor, only: %i[show]

  def index
    @specialities ||= Speciality.first(10)
    @user_states ||= User.select(:state).distinct.order(state: :asc)
    @user_regions ||= User.select(:LGA).distinct.order(LGA: :asc)
    @user_qualifications ||= Qualification.select(:name).order(name: :asc)
    page = params['page'] || 0
    @result =  SearchDoctorQuery.call({}).page(page).per(5)
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
    @result = SearchDoctorQuery.call({}).find_by(id: params[:id])
    @doctors = DoctorPresenter.new(@result).show_full_details
    respond_to do |format|
      format.html
      format.json do
        render json: {doctors: @doctors}.to_json
      end
    end
  end

  def filter
    @doctors = SearchDoctorQuery.call(search_params)

    results = @doctors.map { |doctor| DoctorPresenter.new(doctor).show_card_details }
    respond_to do |format|
      format.html
      format.json do
        render json: {doctors: results, total_pages: results.count}.to_json
      end
    end
  end

  private

  def set_doctor
    @friend = Doctor.find(params[:id])
  end

  def search_params
    params.permit(:doctor_name, :location, :doctor_speciality)
  end

end
