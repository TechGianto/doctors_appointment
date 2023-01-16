require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:appointment1) { create(:appointment) }

  describe 'Associations' do
    it { is_expected.to belong_to(:patient).without_validating_presence }
    it { is_expected.to belong_to(:doctor).without_validating_presence }
  end

  describe 'Validations' do
  it 'Vald with this attributes' do
    expect(appointment1).to be_valid
  end

  it { is_expected.to validate_presence_of(:date_of_appointment) }
  it { is_expected.to validate_presence_of(:no_of_session) }
  it { is_expected.to validate_presence_of(:status) }
  it { is_expected.to define_enum_for(:status) }
  end
end
