class Doctor < ApplicationRecord
  has_many_attached :certificates
  belongs_to :user
  belongs_to :hospital, optional: true
  has_many :doctor_specialities, dependent: :destroy
  has_many :doctor_ratings, dependent: :destroy
  has_many :appointments, dependent: :destroy
  validates_associated :doctor_specialities, :doctor_ratings, :appointments, :hospital, :user
  validates :hospital_address, :qualifications, :rate, :available_time, :application_status, presence: true
  enum :application_status, {pending: 0, rejected: 1, approved: 2}
end
