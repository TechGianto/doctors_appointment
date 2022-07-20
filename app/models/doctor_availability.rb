class DoctorAvailability < ApplicationRecord
  belongs_to :doctor
  validates_associated :doctor
  validates :time_available, :week, :year, :meta_data, presence: true
end
