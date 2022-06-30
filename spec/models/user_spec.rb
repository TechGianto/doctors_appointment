require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) { build(:user) }

  describe 'validations' do
    it 'is valid with this attribute' do
      expect(user1).to be_valid
    end

    it 'is valid with email error' do
      user = build(:user)
      user.save
      expect(user.errors.full_messages).not_to include('Email is invalid', 'Email can"t be blank')
    end

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:middle_name) }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_length_of(:password).is_at_least(5) }
    it { is_expected.to validate_length_of(:phone).is_at_least(11).is_at_most(11) }
    it { is_expected.to validate_presence_of(:LGA).allow_nil }
    it { is_expected.to validate_presence_of(:profile_pic).allow_nil }
    it { is_expected.to validate_presence_of(:nationality).allow_nil }
    it { is_expected.to validate_presence_of(:gender) }
    it { is_expected.to validate_presence_of(:state).allow_nil }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_inclusion_of(:gender).in_array(['Male', 'Female']) }
  end


  describe 'uniqueness' do
    it 'is a invalid with if email is the same' do
      user1.save
      user = build(:user)
      user.save
      expect(user).not_to be_valid
    end
  end

  describe 'format' do
    it 'is a valid phone number' do
      user = build(:user)
      expect(user.phone).to match(/\A[+-]?\d+\z/)
    end

    it 'is a valid email' do
      user = build(:user)
      expect(user.email).to match(/\A[^@\s]+@[^@\s]+\z/)
    end
  end
end
