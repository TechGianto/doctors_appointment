require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) { create(:user) }

  describe 'validations' do
    it 'is valid when all user detail are filled' do
      expect(user1).to be_valid
    end

    it 'is invalid when none of the user detail are filled' do
      user = described_class.create
      expect(user).not_to be_valid
    end

    it 'is valid when email error is not in the user.errors.full_messages' do
      user = create(:user)
      expect(user.errors.full_messages).not_to include('Email is invalid', 'Email can"t be blank')
    end

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:middle_name).allow_nil }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_length_of(:password).is_at_least(5) }
    it { is_expected.to validate_length_of(:phone).is_at_least(11).is_at_most(15) }
    it { is_expected.to validate_presence_of(:LGA).allow_nil }
    it { is_expected.to validate_presence_of(:profile_pic).allow_nil }
    it { is_expected.to validate_presence_of(:nationality).allow_nil }
    it { is_expected.to validate_presence_of(:gender) }
    it { is_expected.to validate_presence_of(:state).allow_nil }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_inclusion_of(:gender).in_array(['Male', 'Female']) }
  end


  describe 'uniqueness' do
    it 'is invalid when email address is already taken' do
      create(:user, email: 'peter@gmail.com')
      user2 = build(:user, email: 'peter@gmail.com')
      user2.valid?
      expect(user2.errors.full_messages).to include('Email has already been taken')
    end
  end

  describe 'format' do
    it 'is valid when phone number contain only numbers' do
      expect(user1.errors.full_messages).not_to include('Phone is invalid') 
    end

    it 'is invalid when it contain alphabet' do
      user = build(:user, phone: '123eerffetf')
      user.valid?
      expect(user.errors.full_messages).to include('Phone is invalid')
    end

    it 'is valid when email contain @ between two words' do
      expect(user1.errors.full_messages).not_to include('Email is invalid')
    end

    it 'is invalid when it does not contain the @ between two words' do
      user = build(:user, email: 'qwertgmail.com')
      user.valid?
      expect(user.errors.full_messages).to include('Email is invalid')
    end
  end
end
