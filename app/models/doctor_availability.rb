class DoctorAvailability < ApplicationRecord
  belongs_to :doctor
  validates_associated :doctor
  validates :time_available, presence: true
  validates :week, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 52}, presence: true
  validates :year, numericality: { only_integer: true }, presence: true
  validates :meta_data, presence: true
  validate :validate_time_availability

  def validate_time_availability
     record = DoctorAvailability.where(week: week, year: year, doctor: doctor)
     if record.present?
      self.errors.add(:base, 'availability year already exists')
     end
  end
end
