require 'rails_helper'

RSpec.describe DoctorSpeciality, type: :model do
  let(:doctor_speciality1) { build(:doctor_speciality) }

  describe 'Association' do
  it { is_expected.to belong_to(:speciality).with_foreign_key('speciality_id')}
  it { is_expected.to belong_to(:doctor).with_foreign_key('doctor_id') }
  end

  describe 'Validations' do
    it 'is valid with this attribute' do
      expect(doctor_speciality1).to be_valid
    end
  end
end
