require 'rails_helper'

RSpec.describe PatientMedication, type: :model do
  let(:patient_medication1) { create(:patient_medication) }

  describe 'validations' do
    it 'is valid with all attributes provided' do
      expect(patient_medication1).to be_valid
    end

    it { is_expected.to validate_presence_of(:no_of_days) }

    it 'is not valid without all attributes provided' do
      patient_medication1 = build(:patient_medication, dose: nil)
      patient_medication1.valid?
      expect(patient_medication1.errors.full_messages).to include('Dose can\'t be blank')
    end

    it 'is invalid without doctor\'s id' do
      patient_medication1 = build(:patient_medication, doctor_id: nil)
      patient_medication1.valid?
      expect(patient_medication1.errors.full_messages).to include('Doctor must exist')
    end
  end

  describe 'Association' do
    it { is_expected.to belong_to(:doctor) }
    it { is_expected.to belong_to(:user) }
  end

  describe '#patient_medication_for_today' do
    let(:patient) { create(:user) }

    before do
      create(:patient_medication, user: patient, created_at: Time.current)
      create(:patient_medication, user: patient, created_at: Time.current)
      create(:patient_medication, user: patient, created_at: Time.now.in_time_zone - 6.days)
    end

    it 'returns patient medication for today' do
      result = described_class.patient_medication_for_today(patient)
      expect(result.size).to be(2)
    end
  end
end
