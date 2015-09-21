# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# in: roll x side die
# out: get one of x sides

# define number of sides
# create array equal to number of sides
# execute random sample from sides for roll
# raise an error for wrong number of arguments


# 1. Initial Solution
# class Die
#   def initialize(sides)
#     @sides= sides
#     @roll=roll
#     if sides < 1
#       raise ArgumentError.new("Invalid number of Arguements")
#     end
#   end

#   def sides
#    @sides
#   end

#     def roll
#     rand(1..sides)
#     # code goes here
#   end
# end


# die = Die.new(6) #This creates a new die object with 6 sides
# die.sides
# p die.roll


# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides= sides
    if sides < 1
      raise ArgumentError.new("Invalid number of Arguements")
    end
  end

  def sides
   @sides
  end

  def roll
    rand(1..sides)
  end
end







# 4. Reflection
# 5.7
# What is an ArgumentError and why would you use one?

# Raising an ArgumentError is a way to assure what a user is providing is correct to call the class.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# My first attempts were over complicated manipulations of an array until I remembered that using a range and rand was a perfectly good option.

# What is a Ruby class?
# A container of methods and instances.
# Why would you use a Ruby class?

# It is reusable and easily modified for multiple uses.

# What is the difference between a local variable and an instance variable?

# Local variable only “lives” inside of the method.  An instance variable can be used anywhere in the class.

# Where can an instance variable be used?

# Throughout the class and is also inherited to subclasses.