require 'faker'
require_relative './db/config'
require_relative './app/models/teacher'

# 9.times do 
#   p Teacher.create!(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number)
# end

t = Teacher.new(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number)

t.save