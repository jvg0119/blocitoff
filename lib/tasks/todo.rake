namespace :todo do
  desc "TODO"
  task delete_items: :environment do
  	# puts "testing"
  	# puts Item.where('created_at < ?', DateTime.now).count 
  	# puts Item.count
  	#vItem.where('created_at < ?', DateTime.now - 2.days).each { |x| puts x.name }
  	Item.where('created_at < ?', Time.now - 7.days).destroy_all
  end

end


