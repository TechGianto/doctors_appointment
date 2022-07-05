FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Lorem.characters(number: 10, min_alpha: 5) }
    last_name { Faker::Name.last_name }
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    date_of_birth { Faker::Date.between(from: '2014-09-23', to: '2014-09-25') }
    phone { Faker::PhoneNumber.cell_phone_in_e164 }
    profile_pic { Faker::Fillmurray.image }
    address { Faker::Address.full_address }
    gender { Faker::Gender.binary_type }
    state { Faker::Address.state }
    nationality { Faker::Nation.nationality }
    LGA { Faker::Address.country_code_long }
    status { rand(1..3) }
  end
end
