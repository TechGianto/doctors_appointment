class Doctor < ApplicationRecord
  has_many_attached :certificates
  belongs_to :user
  belongs_to :hospital, optional: true
  has_many :doctor_specialities, dependent: :destroy
  has_many :doctor_ratings, dependent: :destroy
  has_many :patient_medications, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :doctors_qualifications, dependent: :destroy
  has_many :doctor_availabilities, dependent: :destroy
  validates_associated :doctor_specialities, :user, :doctors_qualifications
  validates :hospital_address, :rate, :available_time, :application_status, presence: true
  enum :application_status, {pending: 0, rejected: 1, approved: 2}
end
