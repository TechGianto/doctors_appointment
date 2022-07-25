# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: "Star Wars" ,  name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

20.times do
   FactoryBot.create(:hospital)
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

Qualification.find_or_create_by(name: 'M.B.B.S')
Qualification.find_or_create_by(name: 'L.B')
Qualification.find_or_create_by(name: 'BM')
Qualification.find_or_create_by(name: 'D.A.U')
Qualification.find_or_create_by(name: 'F.M.S.A')
Qualification.find_or_create_by(name: 'F.M.C.Ophth.')

60.times do
    user = FactoryBot.create(:user)

    picture = Faker::Avatar.image
    picture_filename = File.basename(URI.parse(picture).path)
    downloaded_picture = URI.parse(picture).open
    user.profile_pic.attach(io: downloaded_picture, filename: picture_filename)
    user.save!
end

40.times do
    user = FactoryBot.create(:user)

    picture = Faker::Avatar.image
    picture_filename = File.basename(URI.parse(picture).path)
    downloaded_picture = URI.parse(picture).open
    user.profile_pic.attach(io: downloaded_picture, filename: picture_filename)
    user.save!

    doctor = FactoryBot.create(:doctor, user: user)
    user.add_role :Doctor

    DoctorsQualification.create(doctor: doctor, qualification_id: rand(1..5))
    rating = FactoryBot.create(:doctor_rating, doctor: doctor, user: user)
    rating.user.id = rand(1..60)
    rating.save
    doctorsp = DoctorSpeciality.new
    doctorsp.speciality_id = rand(1..20)
    doctorsp.doctor_id = doctor.id
    doctorsp.save!
end
