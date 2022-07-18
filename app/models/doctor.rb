class Doctor < ApplicationRecord
  has_many_attached :certificates
  belongs_to :user, optional: true
  belongs_to :hospital, optional: true
  has_many :doctor_specialities, dependent: :destroy
  validates_associated :doctor_specialities
  validates :user_id, :hospital_id, :hospital_address, :qualifications, :rate, :available_time, :application_status, presence: true
  enum :application_status, {approved: 0, rejected: 1, pending: 2}
end
