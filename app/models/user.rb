class User < ApplicationRecord
  rolify
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
