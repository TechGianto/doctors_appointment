class PatientController < ApplicationController
  before_action :require_login, only: [:test]
  layout 'patient'

  def index;end
end
