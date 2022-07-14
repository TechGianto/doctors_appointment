class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google, :facebook]
  enum status: {active: 1, inactive: 2, banned: 3}
  validates :last_name, :first_name, :email, :password, :phone, :status, :gender, presence: true, allow_nil: true
  validates :email, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :password, length: {minimum: 5}
  validates :phone, length: {minimum: 11, maximum: 15}, format: {with: /\A[+-]?\d+\z/}, allow_nil: true
  validates :profile_pic, :state, :gender, :middle_name, :nationality, :LGA, :status, presence: true, allow_nil: true
  #validates :gender, inclusion: {in: ['Male', 'Female']}, allow_nil: false
         

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    user ||= User.create(
      email: data['email'],
      password: Devise.friendly_token[0, 20],
    )
    user
  end
end
