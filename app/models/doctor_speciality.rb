class DoctorSpeciality < ApplicationRecord
  belongs_to :doctor, foreign_key: 'doctor_id', required: true
  belongs_to :speciality, foreign_key: 'speciality_id', required: true
end
