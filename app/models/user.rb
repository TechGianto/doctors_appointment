class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum status: {active: 1, inactive: 2, banned: 3}
  validates :last_name, :first_name, :email, :password, :phone, :status, :gender, presence: true
  validates :email, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :password, length: {minimum: 5}
  validates :phone, length: {minimum: 11, maximum: 15}, format: {with: /\A[+-]?\d+\z/}
  validates :profile_pic, :state, :gender, :middle_name, :nationality, :LGA, :status, presence: true, allow_nil: true
  validates :gender, inclusion: {in: ['Male', 'Female']}
         :recoverable, :rememberable, :validatable,
         :omniauthable

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    user
  end
end
