puts "Hey.  Who are you?  What is your first name?"
first_name = gets.chomp
puts "Nice.  And your last?"
last_name = gets.chomp
puts "Well then, " + first_name + "  " + last_name + ", " + "do you have a middle name?"
middle_name=gets.chomp
puts first_name + " "+ middle_name+ " "+last_name+ " is a really great name!"

puts first_name + ", what is your favorite number?"
fav_num=gets.chomp.to_i
better = fav_num + 1
puts "Y'know, " + better.to_s  + " is a slightly better number.  But only slightly."