require 'rails_helper'

RSpec.describe DoctorSpeciality, type: :model do
  let(:doctor_speciality1) { build(:doctor_speciality)}

  describe 'Association' do
  it{ should belong_to(:speciality).without_validating_presence}
  it{ should belong_to(:doctor).without_validating_presence}
  end

  describe 'Validations' do
    it 'is valid with this attribute' do
      expect(doctor_speciality1).to be_valid
    end
  end

  it { should validate_presence_of(:doctor_id) }
  it { should validate_presence_of(:speciality_id) }
end
