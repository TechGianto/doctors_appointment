require 'rails_helper'

RSpec.describe UserVital, type: :model do
  let(:user_vital1) { create(:UserVital) }

  describe 'Associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'format' do
    it 'is not valid' do
      user_vital = build(:user_vital, blood_pressure: '120a')
      user_vital.valid?
      expect(user_vital.errors.full_messages).to include('Blood pressure is invalid')
    end
  end
end
