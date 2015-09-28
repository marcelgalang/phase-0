# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution
# class Die
#   def initialize(labels)

#     args = method(__method__).parameters.map { |arg| arg[1] }

#      unless x == 6
#       raise ArgumentError.new("Invalid Arguement number")#single argument
#     end

#     @labels= labels
#     @sides= sides

#     if Die.new.empty?
#       raise ArguementError.new("List is empty")
#     end

#     sides= @labels.length
#     return sides

#   end

#   def sides
#     @sides
#      sides= @labels.length

#      unless Die.sides == 0
#           raise ArgumentError.new("Invalid number of Arguements")
#     end
# end

#   def roll
#     a= @labels
#     a.sample
#   end
# end

class Die
  # class << self
  def initialize(labels)

    @labels= labels


    sides= @labels.length
    return sides


 # x = self.method(__method__).arity

    if (die.empty?)
      raise ArgumentError.new("List is empty")
    end


  end

  def sides
    @sides
     sides= @labels.length


end

  def roll
    a= @labels
    a.sample
  end
end
# end
die = Die.new([])
die.sides # still returns the number of sides, in this case 6
die.roll

# Refactored Solution








# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
Some of the logic carried over.  But not all of it.
What does this exercise teach you about making code that is easily changeable or modifiable?
I see how leaving things open for change makes the program more useful.  We can now change this into a boggle board, or 10 sided die.
What new methods did you learn when working on this challenge, if any?
#sample to use to get a random
What concepts about classes were you able to solidify in this challenge?


=end