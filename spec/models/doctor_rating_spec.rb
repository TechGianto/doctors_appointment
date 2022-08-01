require 'rails_helper'

RSpec.describe DoctorRating, type: :model do
  let(:doctor_rating1) { create(:doctor_rating) }

  describe 'Associations' do
    it { is_expected.to belong_to(:user).without_validating_presence }
    it { is_expected.to belong_to(:doctor).without_validating_presence }
  end

  describe 'Validations' do
    it 'valid with this attribute' do
      expect(doctor_rating1).to be_valid
    end

    it { is_expected.to validate_presence_of(:rating) }
    it { is_expected.to validate_presence_of(:comment) }
  end
end
