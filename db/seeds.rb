
user = User.new(name: "Joe", email: "joe@example.com", password: "password")
user.skip_confirmation!
user.save

user = User.new(name: "Mary", email: "mary@example.com", password: "password")
user.skip_confirmation!
user.save

user = User.new(name: "Mike", email: "mike@example.com", password: "password")
user.skip_confirmation!
user.save

users = User.all

1.upto 20 do |n|
  item = Item.create!(
  	user: users.sample,
  	name: "Item name number #{n}.",
    created_at: rand(1..10.days).seconds.ago
  	)
end



=begin
# 
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

=end


puts "*".center(40,"*")
puts
puts "seeding done".center(40)
puts "#{User.count} users created".center(40)
puts "#{Item.count} items created".center(40)
puts
puts "*".center(40,"*")


