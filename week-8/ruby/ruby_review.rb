# I worked on this challenge [by myself].
# This challenge took me [2] hours.

# Pseudocode

# input: integer
# output: number as english in_words

# steps
# -make hash of each unique number name

# loop through hash
# if it is one digit return the name
# if it is less than 100
# #   either return the names of integers divisible by themselves with no remainder
# #   or return name and run the method again for single digit (name using the remainer)
# if bigger run method and then run again for less than 100
#



def num_words(integer)
numbers_name = {
    1000000 => "million", 1000 => "thousand", 100 => "hundred", 90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty", 50 => "fifty", 40 => "forty", 30 => "thirty", 20 => "twenty", 19=>"nineteen", 18=>"eighteen", 17=>"seventeen", 16=>"sixteen", 15=>"fifteen", 14=>"fourteen", 13=>"thirteen", 12=>"twelve", 11 => "eleven", 10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 6 => "six", 5 => "five", 4 => "four", 3 => "three", 2 => "two", 1 => "one"
}

output = ""
  numbers_name.each do |num, name|
    if integer == 0
      return output
    elsif integer.to_s.length == 1 && integer/num > 0
      return output + "#{name}"
    elsif integer < 100 && integer/num > 0
      return output + "#{name}" if integer%num == 0
      return output + "#{name} " + num_words(integer%num)
    elsif integer/num > 0
      return output + num_words(integer/num) + " #{name} " + num_words(integer%num)
    end
  end
end

p num_words(35)






# Reflection
