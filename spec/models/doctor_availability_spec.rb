require 'rails_helper'

RSpec.describe DoctorAvailability, type: :model do
  let(:doctor_availability) { create(:doctor_availability) }

  describe 'Association' do
    it { is_expected.to belong_to(:doctor).without_validating_presence }
  end

  describe 'Validations' do
    it 'is valid with this attributes' do
      expect(doctor_availability).to be_valid
    end

    it { is_expected.to validate_presence_of(:time_available) }
    it { is_expected.to validate_presence_of(:week) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_presence_of(:meta_data) }
  end
end
