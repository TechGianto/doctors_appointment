class DoctorsQualification < ApplicationRecord
  belongs_to :doctor
  belongs_to :qualification
end
