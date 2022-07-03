class Doctor < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :hospital, optional: true
  has_many :doctor_specialities
  validates_associated :doctor_specialities
  validates :user_id,:certificate,:hospital_id,:hospital_address,:qualifications,:rate,:available_time, presence: true
end
