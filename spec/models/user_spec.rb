require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  user1 = described_class.create(email: 'stan@gmail.com')
  it 'is not valid without an email' do
    user1 = build(:user, email: 'stan@gmail.com')
    expect(user1).not_to be_valid
  end

  it 'is valid with email' do
    user2 = build(:user, email: 'Stu@gmail.com', password: 'pickers')
    expect(user2).to be_valid
  end

  it 'is registered' do
    expect(user1.email).to eq 'stan@gmail.com'
  end

  #shoulda test
  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end
end
