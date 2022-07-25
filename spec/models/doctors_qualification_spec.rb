require 'rails_helper'

RSpec.describe DoctorsQualification, type: :model do
  let(:doctors_qualification) { create(:doctors_qualification) }

  describe 'Associations' do
    it { is_expected.to belong_to(:doctor).without_validating_presence }
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(doctors_qualification).to be_valid
    end
  end
end
