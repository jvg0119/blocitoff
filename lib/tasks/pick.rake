# used rails g task pick

namespace :pick do
	task :winner => :environment do
		desc "test"
		@user = User.order('random()').first
		#user = User.all.sample
		puts "The winner is: #{@user.name}."
	end

	task :task => [:environment] do 
		item = Item.all.sample
		puts "Item is: #{item.name}"
	end

	task :winner_task => [:environment, :pick_winner, :pick_task] do 
	end

	task winner_task2: [
		:environment,
		:pick_winner, 
		:pick_task] {}

	task :winner_task3 => [:pick_winner, :pick_task] 

#	task :winner_list_item => [:environment, :pick_winner] do 
	task :winner_list_item => [:pick_winner] do 
		puts "#{@user.name}'s items are:"
		puts @user.items.all.pluck(:name)
	end

end
