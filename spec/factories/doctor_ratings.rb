FactoryBot.define do
  factory :doctor_rating do
    association :user
    association :doctor
    rating { rand(0..5) }
    comment { Faker::Lorem.paragraphs }
  end
end
