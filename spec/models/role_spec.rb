require 'rails_helper'

RSpec.describe Role, type: :model do
  let(:user1) { create(:user) }

  describe 'role' do
    it 'is valid' do
      user = user1.has_role? :Patient
      expect(user).to be true
    end
  end

  describe 'doctor role' do
    it 'validates doctor role' do
      user1.add_role :Doctor
      user = user1.has_role? :Doctor
      expect(user).to be true
    end
  end

  describe 'admin role' do
    it 'validates admin role' do
      user1.add_role :admin
      user = user1.has_role? :admin
      expect(user).to be true
    end
  end

end
