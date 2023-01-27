require 'rails_helper'

RSpec.describe SearchDoctorQuery, type: :query do
  describe '#call' do
    context 'when no filter is provided' do
      before do
        create_list(:doctor, 5, :with_specialties, application_status: Doctor.application_statuses[:approved])
      end

      it 'returns all approved doctors' do
        result = described_class.call({})
        expect(result.size).to be(5)
      end
    end

    context 'when no approved doctors' do
      before do
        create_list(:doctor, 5, :with_specialties, application_status: Doctor.application_statuses[:rejected])
      end

      it 'returns empty list' do
        result = described_class.call({})
        expect(result.size).to be(0)
      end
    end

    context 'when filtering is supplied' do
      let(:user) { create(:user, first_name: 'Dave', last_name: 'Don', state: 'Ondo') }
      let(:user2) { create(:user, first_name: 'John', last_name: 'Doe', state: 'Ondo') }

      before do
        create(:doctor, :with_specialties, user: user, application_status: Doctor.application_statuses[:approved])
        create(:doctor, :with_specialties, user: user2, application_status: Doctor.application_statuses[:approved])
      end

      it 'filters by doctors location' do
        result = described_class.call({location: 'Ondo'})

        expect(result.size).to be(2)
        expect(result.pluck(:first_name)).to eq(%w[Dave John])
      end

      it 'does not return result when no location matched' do
        result = described_class.call({location: 'Lagos'})
        expect(result.size).to be(0)
      end

      it 'filters by doctor first and last name' do
        result = described_class.call({doctor_name: 'John'})

        expect(result.size).to be(1)
      end
    end
  end
end
