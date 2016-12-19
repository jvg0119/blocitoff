# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

user = User.new(name: "Joe", email: "joe@example.com", password: "password")
user.skip_confirmation!
user.save

4.times do 
  user = User.new(
  	name: Faker::Name.name,
  	email: Faker::Internet.email,
  	password: 'password',
  	)
	user.skip_confirmation!
	user.save
end

users = User.all

20.times do 
  item = Item.create!(
  	user: users.sample,
  	name: Faker::Lorem.sentence
  	)
end

puts "*".center(40,"*")
puts
puts "seeding done".center(40)
puts "#{User.count} users created".center(40)
puts "#{Item.count} items created".center(40)
puts
puts "*".center(40,"*")



