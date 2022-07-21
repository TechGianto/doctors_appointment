require 'rails_helper'

RSpec.describe DoctorAvailability, type: :model do
  let(:doctor) { create(:doctor) }
  let(:doctor_availability1) { build(:doctor_availability, doctor: doctor) }

  describe 'Association' do
    it { is_expected.to belong_to(:doctor).without_validating_presence }
  end

  describe 'Validations' do
    it 'is valid with this attributes' do
      expect(doctor_availability1).to be_valid
    end

    it { is_expected.to validate_presence_of(:time_available) }
    it { is_expected.to validate_presence_of(:week) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_presence_of(:meta_data) }
  end


  describe 'validate_time_availability' do
    let(:doctor) { create(:doctor) }

    it 'is invalid when year of availabilty already exists' do
      create(:doctor_availability, doctor: doctor, time_available: '2022-07-21 23:51:35.000000000 +0000', week: 52, year: 2022, meta_data: [{'foo' => 0, 'bar' => 1}, ['baz', 2]])
      docavil = build(:doctor_availability, doctor: doctor, time_available: '2022-07-21 23:51:35.000000000 +0000', week: 52, year: 2022, meta_data: [{'foo' => 0, 'bar' => 1}, ['baz', 2]])
      docavil.validate
      expect(docavil.errors.full_messages).to include('availability year already exists')
    end
  end
end
