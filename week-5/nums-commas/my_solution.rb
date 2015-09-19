# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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