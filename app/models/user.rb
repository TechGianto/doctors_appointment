class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum status: {active: 1, inactive: 2, banned: 3}
  validates :last_name, :first_name, :middle_name, :email, :password, :phone, :gender, :status, presence: true
  validates :email, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :password, length: {minimum: 5}
  validates :phone, length: {minimum: 11, maximum: 11}, format: {with: /\A[+-]?\d+\z/}
  validates :profile_pic, :state, :gender, :nationality, :LGA, :status, presence: true, allow_nil: true
  validates :gender, inclusion: {in: ['Male', 'Female']}
end
