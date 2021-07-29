# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do
    city = City.create!(name: Faker::Address.city)
  end

100.times do
    doctor = Doctor.create!(first_name: Faker::Name.first_name, city_id: rand(1..20))
  end

100.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, city_id: rand(1..20))
  end

100.times do
    appointment = Appointment.create!(date: Faker::Date.in_date_period, doctor_id: rand(1..100), patient_id: rand(1..100), city_id: rand(1..20))
  end

10.times do
  speciality = Speciality.create!(name: Faker::Name.first_name)
end

10.times do
  join_specialities_with_doctors = JoinSpecialitiesWithDoctor.create!(doctor_id: rand(1..10), speciality_id: rand(1..10))
end

