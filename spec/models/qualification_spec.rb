require 'rails_helper'

RSpec.describe Qualification, type: :model do
  let(:qualification1) { create(:qualification) }

  describe 'Associations' do
    it { is_expected.to have_many(:doctors_qualifications).dependent(:destroy) }
  end

  describe 'Validations' do
    it 'is valid with this attribute' do
      expect(qualification1).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
  end
end
