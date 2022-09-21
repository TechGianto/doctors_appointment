FactoryBot.define do
  factory :user_vital do
    association :user
    blood_pressure { rand(90..110).to_s }
    weight { Faker::Number.between(from: 40.0, to: 110.0).round(2) }
  end
end
