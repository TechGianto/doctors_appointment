FactoryBot.define do
  factory :doctor do
    association :user
    association :hospital
    hospital_address { Faker::Address.street_address }
    rate { Faker::Number.decimal(l_digits: 2) }
    available_time { '9:00AM' }
    application_status { rand(0..2) }

    trait :with_specialties do
      after(:create) do |doctor|
        create(:doctor_speciality, doctor: doctor)
      end
    end

  end
end
