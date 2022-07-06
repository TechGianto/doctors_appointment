# spec/models/hospital_spec.rb
require 'rails_helper'

RSpec.describe Hospital, type: :model do
  let(:hospital1) { create(:hospital) }
  
  describe 'associations' do
    it { is_expected.to have_many(:doctors).without_validating_presence }
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(hospital1).to be_valid
    end
  end

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:address) }
  it { should define_enum_for(:status).with_values(open:0, closed:1)}
  it { should define_enum_for(:h_type).with_values(clinics: 0, teaching: 1, specialized: 2, district: 3, general: 4)}
end
