class Hospital < ApplicationRecord
  has_many :doctors, dependent: :destroy
  validates :name, :address, :status, presence: true
  validates_associated :doctors
  enum :h_type, {clinics: 0, teaching: 1, specialized: 2, district: 3, general: 4}
  enum :status, {open: 0, closed: 1}
end
