require 'rails_helper'

RSpec.describe Doctor, type: :model do
  let(:doctor1) { build(:doctor) }

  describe 'Associations' do
    it { should have_many(:doctor_specialities) }
    it { should belong_to(:user).without_validating_presence}
    it { should belong_to(:hospital).without_validating_presence }
  end


  describe 'Validations' do
    it 'is valid with this attribute' do
      expect(doctor1).to be_valid
    end

    it { should validate_presence_of(:certificate) }
    it { should validate_presence_of(:hospital_address) }
    it { should validate_presence_of(:qualifications) }
    it { should validate_presence_of(:rate) }
    it { should validate_presence_of(:available_time) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:hospital_id) }
  end
end
