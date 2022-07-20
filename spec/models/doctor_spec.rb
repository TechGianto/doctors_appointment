require 'rails_helper'

RSpec.describe Doctor, type: :model do
  let(:doctor1) { create(:doctor) }

  describe 'Associations' do
    it { is_expected.to have_many(:doctor_specialities).dependent(:destroy) }
    # it { is_expected.to have_many(:doctor_ratings).dependent(:destroy) }
    it { is_expected.to have_many(:appointments).dependent(:destroy) }
    it { is_expected.to belong_to(:user).without_validating_presence }
    it { is_expected.to belong_to(:hospital).without_validating_presence }
    # it { is_expected.to belong_to(:doctor_availabilities).dependent(:destroy) }
  end


  describe 'Validations' do
    it 'is valid with this attribute' do
      expect(doctor1).to be_valid
    end

    it { is_expected.to validate_presence_of(:hospital_address) }
    it { is_expected.to validate_presence_of(:qualifications) }
    it { is_expected.to validate_presence_of(:rate) }
    it { is_expected.to validate_presence_of(:available_time) }
    it { is_expected.to validate_presence_of(:application_status) }
    it { is_expected.to define_enum_for(:application_status) }
  end
end
