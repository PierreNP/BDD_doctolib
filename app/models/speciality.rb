class Speciality < ApplicationRecord
    has_many :join_specialities_with_doctors
    has_many :doctors, through: :join_specialities_with_doctors
end
