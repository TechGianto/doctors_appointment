FactoryBot.define do
  factory :hospital do
    name { Faker::Name.name }
    address { Faker::Address.street_address }
    h_type { rand(0..4) }
    status { rand(0..1) }
  end
end
