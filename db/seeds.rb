# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all

puts 'Creating data...'

user1 = User.new(
  firstname: 'Manon',
  lastname: 'Mathieu',
  email: 'manon.mat253@gmail.com',
  password: 'Password',
  description: 'Rédactrice freelance  - Community Manager - Webdesigner',
  admin: true
)
user1.save!
