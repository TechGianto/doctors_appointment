class Speciality < ApplicationRecord
  has_many :doctor_specialities
  validates :name, presence: true
end
