FactoryBot.define do
  factory :appointment do
    date_of_appointment { Faker::Date.in_date_period(year: 2022, month: 7) }
    no_of_session { rand(0..2) }
    status { rand(0..2) }
    association :patient
    association :doctor
  end
end
