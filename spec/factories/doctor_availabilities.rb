FactoryBot.define do
  factory :doctor_availability do
    time_available { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default) }
    week { rand(1..52) }
    year { rand(2022..3000) }
    meta_data { Faker::Json.shallow_json(width: 3, options: { key: 'Name.first_name', value: 'Name.last_name' }) }
    association :doctor
  end
end
