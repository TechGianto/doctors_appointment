require 'rails_helper'

RSpec.describe Role, type: :model do
  it 'Assign role patient to new User' do
    user = User.create!
    expect(user.done?).to be_patient
  end
  #pending "add some examples to (or delete) #{__FILE__}"
end
