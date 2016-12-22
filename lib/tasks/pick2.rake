# used rails g task pick

namespace :pick2 do
	desc "Pick a random user as a winner"
	task :winner => :environment do
		# @user = User.order('random()').first
		@user = pick_random(User)
		#user = User.all.sample
		puts "The winner is: #{@user.name}."
	end

	desc "Pick a random item as a task"
	task :task => [:environment] do 
		#item = Item.all.sample
		item = pick_random2(Item)
		puts "Item is: #{item.name}"
	end

	desc "Pick a random user and item as a winner and a task"
	task :winner_task3 => [:pick_winner, :pick_task] 

#	task :winner_list_item => [:environment, :pick_winner] do 
	task :winner_list_item => [:pick_winner] do 
		puts "#{@user.name}'s items are:"
		puts @user.items.all.pluck(:name)
	end

	def pick_random(model)
		model.all.sample
	end

	def pick_random2(model)
		model.order('random()').first
	end

end
