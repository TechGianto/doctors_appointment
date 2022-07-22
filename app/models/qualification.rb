class Qualification < ApplicationRecord
  validates :name, presence: true
  has_many :doctors_qualifications, dependent: :destroy
end
