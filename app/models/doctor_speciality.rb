class DoctorSpeciality < ApplicationRecord
  belongs_to :doctor , optional: true
  belongs_to :speciality , optional: true
  validates :doctor_id, :speciality_id, presence: true
end
