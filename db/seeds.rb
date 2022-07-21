# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: "Star Wars" ,  name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

20.times do
    Hospital.create(name: Faker::Address.street_name, address: Faker::Address.full_address)
end

# create manual specialities
Speciality.first_or_create(name: 'Allergy and immunology')
Speciality.first_or_create(name: 'Anesthesiology')
Speciality.first_or_create(name: 'Dermatology')
Speciality.first_or_create(name: 'Diagnostic radiology')
Speciality.first_or_create(name: 'Emergency medicine')
Speciality.first_or_create(name: 'Family medicine')
Speciality.first_or_create(name: 'Internal medicine')
Speciality.first_or_create(name: 'Medical genetics')
Speciality.first_or_create(name: 'Neurology')
Speciality.first_or_create(name: 'Nuclear medicine')

20.times do
    Speciality.create(name: Faker::Company.industry)
end

60.times do
    user = User.new
    user.email = Faker::Internet.email
    user.password = 'password'
    user.last_name = Faker::Name.last_name
    user.first_name = Faker::Name.first_name
    user.middle_name = Faker::Name.middle_name
    user.date_of_birth = Faker::Date.between(from: '2014-09-23', to: '2014-09-25')
    user.phone = '08104663471'
    user.address = Faker::Address.full_address
    user.gender = Faker::Gender.binary_type
    user.state = Faker::Address.state
    user.nationality = Faker::Nation.nationality
    user.LGA = Faker::Address.country_code_long
    user.status = rand(1..3)

    picture = Faker::Avatar.image
    picture_filename = File.basename(URI.parse(picture).path)
    downloaded_picture = URI.parse(picture).open
    user.profile_pic.attach(io: downloaded_picture, filename: picture_filename)
    user.save!
    puts user.id
end

40.times do
    user = User.new
    user.email = Faker::Internet.email
    user.password = 'password'
    user.last_name = Faker::Name.last_name
    user.first_name = Faker::Name.first_name
    user.middle_name = Faker::Name.middle_name
    user.date_of_birth = Faker::Date.between(from: '2014-09-23', to: '2014-09-25')
    user.phone = '08104663471'
    user.address = Faker::Address.full_address
    user.gender = Faker::Gender.binary_type
    user.state = Faker::Address.state
    user.nationality = Faker::Nation.nationality
    user.LGA = Faker::Address.country_code_long
    user.status = rand(1..3)

    picture = Faker::Avatar.image
    picture_filename = File.basename(URI.parse(picture).path)
    downloaded_picture = URI.parse(picture).open
    user.profile_pic.attach(io: downloaded_picture, filename: picture_filename)
    user.save!

    doctor = Doctor.new
    doctor.hospital_address = Faker::Address.full_address
    doctor.rate = rand(1.0..5.0)
    doctor.available_time = Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
    doctor.user_id = user.id
    doctor.hospital_id = rand(1..10)
    doctor.qualifications = 'M.B.B.S'
    doctor.save!
    doctorsp = DoctorSpeciality.new
    doctorsp.speciality_id = rand(1..20)
    doctorsp.doctor_id = doctor.id
    doctorsp.save!
end
