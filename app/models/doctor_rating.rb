class DoctorRating < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates_associated :user, :doctor
  validates :rating, :comment, presence: true
end
