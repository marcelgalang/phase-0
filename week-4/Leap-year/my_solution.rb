# I worked on this challenge [by myself, with: Marcel Galang ].


# Your Solution Below

def leap_year?(number)
  if ((number % 4) == 0) && ((number % 100) != 0)
  	p true
  	 # puts "This is a leap year."
  elsif ((number % 400) == 0) 
  	true 
  	# puts "This is a leap year."
  elsif ((number % 4) == 0) && ((number % 100) == 0) && ((number % 400) != 0)
  	false
    # puts "This is not a leap year."
  elsif (number %4) != 0
    false
    # puts "This is not a leap year."
  end
end

leap_year?(4)