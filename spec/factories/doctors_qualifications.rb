FactoryBot.define do
  factory :doctors_qualification do
    association :doctor
    association :qualification
  end
end
