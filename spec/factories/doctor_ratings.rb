FactoryBot.define do
  factory :doctor_rating do
    rating { rand(0..5) }
    comment { Faker::Lorem.paragraphs }
    association :user
    association :doctor
  end
end
