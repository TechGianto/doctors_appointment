class UserVital < ApplicationRecord
    belongs_to :user
    validates :blood_pressure, presence: true, format: {with: /\A[+-]?\d+\z/}, allow_nil: true
    validates :weight, presence: true, allow_nil: true

end
