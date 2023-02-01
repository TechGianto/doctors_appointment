class DoctorsController < ApplicationController
  before_action :require_login
  before_action :doctor, only: [:show]

  def show
    respond_to do |format|
      format.html
      format.json do
        render json: {doctors: @doctor}.to_json
      end
    end
  end

  private

  def doctor
    @doctor ||= SearchDoctorQuery.call({}).find(params[:id])
  end
end
