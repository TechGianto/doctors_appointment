# spec/models/hospital_spec.rb
require 'rails_helper'

RSpec.describe Hospital, type: :model do
  let(:hospital1) { build(:hospital) }
  
  describe 'associations' do
    it { should have_many(:doctors).without_validating_presence }
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(hospital1).to be_valid
    end
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
end
