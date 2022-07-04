class Hospital < ApplicationRecord
  has_many :doctors, dependent: :destroy
  validates :name, :address, :status, presence: true
  validates_associated :doctors
  enum :type, {Clinics: 0, Teaching: 1, Specialized: 2, District: 3, General: 4}
  enum :status, {Open: 0, Closed: 1}
end
