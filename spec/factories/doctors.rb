FactoryBot.define do
  factory :doctor do
    association :user
    association :hospital
    hospital_address { Faker::Address.street_address }
    qualifications { 'Bsc,Msc.LLB' }
    rate { Faker::Number.decimal(l_digits: 2) }
    available_time { '9:00AM' }
    application_status { rand(0..2) }
  end
end
