task :greet => :ask do 
	puts "Hello world!"
end

task :ask do 
	puts "How are you?"
end

task :something => [:ask, :greet]  do

end

