class CalendarInvite < ApplicationRecord
  belongs_to :doctor

  validates :status, :provider, :external_reference_id, presence: true
  enum status: {
    pending: 1,
    accepted: 2,
    declined: 3,
  }

end
