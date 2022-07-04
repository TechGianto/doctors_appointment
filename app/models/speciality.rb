class Speciality < ApplicationRecord
  has_many :doctor_specialities, dependent: :destroy
  validates :name, presence: true
end
