# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#the "number" from the string
# What is the output? (i.e. What should the code return?)
#a "number" string with commas

# What are the steps needed to solve the problem?
#1 break out numbers to 9 million
# 2 on one set of numbers turn them into a string
# 3 split the characters up into an array
# 4. add commas where needed between characters (use index)
# 5. make the array a string number again
# 6 .repeat for other number ranges.



# 1. Initial Solution
# def separate_comma(x)

#   if x >= 1000000
#     x = x.to_s
#     a = []
#     a = x.split(//)
#     a.insert(-4, ",")
#     a.insert(-8, ",")
#     a.join

#   elsif
#     x >=100000
#     x = x.to_s
#     a = []
#     a = x.split(//)
#     a.insert(-4, ",")
#     a.join
#   elsif
#     x >=10000
#      x = x.to_s
#     a = []
#     a = x.split(//)
#     a.insert(-4, ",")
#     a.join
#   elsif
#     x >=1000
#      x = x.to_s
#     a = []
#     a = x.split(//)
#     a.insert(-4, ",")
#     a.join
#   else
#     x >1000
#     x = x.to_s
#   end
# end



# 2. Refactored Solution
def separate_comma(x)

  a = []

  if x >= 1000000
    x = x.to_s
    a = x.split(//)
    a.insert(-4, ",").insert(-8, ",").join

  elsif
    x >=100000
     x = x.to_s
    a = x.split(//)
    a.insert(-4, ",").join
  elsif
    x >=1000
     x = x.to_s
    a = x.split(//)
    a.insert(-4, ",").join
  else
    x<100
    x.to_s
  end
end



# 3. Reflection
=begin
5.5 Solo Challenge
What was your process for breaking the problem down? What different approaches did you consider?
I thought of the letter grade assignment we had earlier and referenced how that was done.  That helped.
Was your pseudocode effective in helping you build a successful initial solution?
It was essential.  There were a lot of steps I had to figure out how to do.
What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
My refactoring incorporated the same methods.  I cut out redundancies and minimized syntax.
How did you initially iterate through the data structure?
There was a tip to review flow control.  That had me thinking of if, elsif, else structures.  Otherwise I may have tried to solve it in array manipulation.
Do you feel your refactored solution is more readable than your initial solution? Why?
Much more so.  You can see how it “tells the story” and how the different number ranges all share a pattern.
=end