FactoryBot.define do
  factory :user do
    email { 'Stan@gmail.com' }
    password { 'qwerty' }
    last_name { 'Isaiah' }
    first_name { 'Peter' }
    middle_name { 'James' }
    date_of_birth { '2020-6-26' }
    phone { '08104663471' }
    profile_pic { 'https://www.howtogeek.com/wp-content/uploads/2018/06/shutterstock_1006988770.png?width=1198&trim=1,1&bg-color=000&pad=1,1' }
    address { 'No.30 adekule street ojaokuta lagos' }
    gender { 'Male' }
    state { 'Lagos' }
    nationality { 'Nigeria' }
    LGA { 'Isolo' }
    status { 3 }
  end
end
