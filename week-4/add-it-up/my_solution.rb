# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Awilda ].

#Input: Objects within array
#Output: Sum
#Steps:
#1. Define method, total that takes in an array for an argument
#2. Iterate through the array with the inject method to sum up all the elements

def total(list_of_numbers)
  list_of_numbers.reduce (:+)

end

total([1,2,3])      # => 6
total([4.5, 0, -1]) # => 3.5
total([-100, 100])

#Input: Array of words
#Output: A complete sentence
#Steps:
#1. sentence_maker join (  )
#2. sentence_maker[1].capitalize
#3. + "."

def sentence_maker(list_of_words)
  #x= list_of_words.join(" ")
 list_of_words.join(" ").to_s.capitalize + (".")
  #list_of_words.join(" ").to_s.capitalize
end

sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])
