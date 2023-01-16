require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe '#medication_for_today' do
    let(:patient) { create(:patient) }

    before do
      create(:patient_medication, patient: patient, created_at: Time.current)
      create(:patient_medication, patient: patient, created_at: Time.current)
      create(:patient_medication, patient: patient, created_at: Time.now.in_time_zone - 6.days)
    end

    it 'returns patient medication for today' do
      result = patient.medication_for_today
      expect(result.size).to be(2)
    end
  end
end