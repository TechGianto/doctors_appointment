require 'rails_helper'

RSpec.describe Speciality, type: :model do
  let(:speciality1) { build(:speciality)}

  describe 'Association' do
    it { should have_many(:doctor_specialities) }
  end

  describe 'Validations' do
    it 'is valid with this attribute' do
      expect(speciality1).to be_valid
    end
  end
    it { should validate_presence_of(:name) }
end
