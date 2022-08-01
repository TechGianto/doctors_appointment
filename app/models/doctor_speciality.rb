class DoctorSpeciality < ApplicationRecord
  belongs_to :doctor, optional: false
  belongs_to :speciality, optional: false
end
