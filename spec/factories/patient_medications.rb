FactoryBot.define do
  factory :patient_medication do
    medication_name { Faker::Name.name }
    association :patient
    association :doctor
    dose { rand(1..3) }
    dosage { rand(1..12).hours }
    no_of_days { rand(2..5) }
    status { rand(1..4) }
  end
end
