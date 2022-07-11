class User < ApplicationRecord
  has_one_attached :profile_pic
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google, :facebook]
  enum status: {active: 1, inactive: 2, banned: 3}
  validates :last_name, :first_name, :email, :password, :status, presence: true
  validates :phone, :gender, :middle_name, presence: true, allow_nil: true
  validates :email, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :password, length: {minimum: 5}
  validates :phone, length: {minimum: 11, maximum: 15}, format: {with: /\A[+-]?\d+\z/}, allow_nil: true
  validates :state, :gender, :middle_name, :nationality, :LGA, :status, presence: true, allow_nil: true
  #validates :gender, inclusion: {in: ['Male', 'Female']}, allow_nil: false

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    # Uncomment the section below if you want users to be created if they don't exist
    user ||= User.create(
      email: data['email'],
      first_name: data['first_name'],
      last_name: data['last_name'],
      middle_name: data['middle_name'],
      state: data['location'],
      password: Devise.friendly_token[0, 20],
    )
    user
  end
  validates :gender, inclusion: {in: ['Male', 'Female']}

    after_create :assign_default_role  

      validate :must_have_a_role, on: :update

        private

          def must_have_a_role
            unless roles.any?
            errors.add(:roles, 'Must have at least 1 role')
            end
          end

          def assign_default_role
              self.add_role(:Patient) if self.roles.blank?
          end
end
