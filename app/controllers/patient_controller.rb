class PatientController < ApplicationController
  before_action :require_login, only: [:index]
  layout 'patient'

  def index; end
end
