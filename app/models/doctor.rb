class Doctor < ApplicationRecord
  has_many_attached :certificates
  belongs_to :user
  has_many :patients, through: :appointments
  belongs_to :hospital, optional: true
  has_many :calendar_invites, dependent: :nullify
  has_many :doctor_specialities, dependent: :destroy
  has_many :specialities, through: :doctor_specialities
  has_many :doctor_ratings, dependent: :destroy
  has_many :patient_medications, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :doctors_qualifications, dependent: :destroy
  has_many :doctor_availabilities, dependent: :destroy
  validates :hospital_address, :rate, :available_time, :application_status, presence: true


  enum application_status: {
    pending: 0,
    rejected: 1,
    approved: 2,
  }

  scope :with_calendar_setup, lambda { joins(:calendar_invites).where.not(calendar_invites: { id: nil }) }
  scope :with_active_calendar, lambda { with_calendar_setup.where(calendar_invites: { status: :accepted }) }

  after_commit :run_commit_hooks

  delegate :first_name, to: :user # This allow us call doctor.first_name
  delegate :last_name, to: :user  # This allows us call doctor.last_name
  delegate :email, to: :user

  def speciality_names
    return self.specialities.map(&:name)
  end

  def doctor_rate
    self.doctor_ratings.sum(&:rating) / self.doctor_ratings.size
  end

  def refresh_calendar_status
    send_calendar_invitation if calendar_invites.empty?
    return if calendar_invites.empty?

    calendar_invite = calendar_invites.take
    provider = calendar_invite.provider.constantize
    provider.send(:verify!, calendar_invite)
  end

  def run_commit_hooks
    # send_calendar_invitation
  end

  def send_calendar_invitation
    return if calendar_invites.any?

    calendar_provider.invite!({ email: email })
  end

  def calendar_provider
    return CalendlyProvider
  end
end
