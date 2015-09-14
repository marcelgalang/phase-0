# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below
def welcome (input)
  x=input
  if input.to_s.include?'CA'
   p "Welcome to California"
  else
   p "You should move to California"
  end
end

p "What city and state do you live in?"
input = gets.chomp
welcome(input)