task :pick_winner => :environment do
	@user = User.order('random()').first
	#user = User.all.sample
	puts "The winner is: #{@user.name}."
end

task :pick_task => [:environment] do 
	item = Item.all.sample
	puts "Item is: #{item.name}"
end

task :pick_winner_task => [:environment, :pick_winner, :pick_task] do 
end

task :pick_winner_list_item => [:environment, :pick_winner] do 
	puts "#{@user.name}'s items are:"
	puts @user.items.all.pluck(:name)
end

