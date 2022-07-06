FactoryBot.define do
  factory :doctor_speciality do
   association :doctor
   association :speciality
  end
end
