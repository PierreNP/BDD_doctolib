class Doctor < ApplicationRecord
    belongs_to :city
    has_many :appointments
    has_many :patients, through: :appointments
    has_many :join_specialities_with_doctors
    has_many :specialities, through: :join_specialities_with_doctors
end
