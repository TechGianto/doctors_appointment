FactoryBot.define do
  factory :qualification do
    name { 'MyString' }
    association :doctor
  end
end
