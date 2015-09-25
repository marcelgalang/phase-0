# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input:answer integer,
# Output: true or false
# Steps:


# Initial Solution

# class GuessingGame
#    attr_reader :guess, :solved, :answer
#    attr_writer :guess
#   def initialize(answer)

#     @answer= answer

#     @solved= solved
#   end

#   def guess(guess)
#     @guess= guess
#     if guess > @answer
#       return :high
#     elsif guess < @answer
#       return :low
#     else @answer == guess
#        return :correct
#     end

#     if :correct
#       :solved? == true
#     end
#   end

#   def solved?

#      unless @answer == @guess
#      return false
#     else

#       return true
#     end
#   end
# end



  # Make sure you define the other required methods, too




# Refactored Solution

class GuessingGame
   attr_reader :guess, :solved, :answer

  def initialize(answer)
    @answer= answer
    @solved= solved
  end

  def guess(guess)
    @guess= guess
    if guess > @answer
      return :high
    elsif guess < @answer
      return :low
    else
       return :correct
       :solved? == true
    end
  end

  def solved?
     unless @answer == @guess
     return false
    else
      return true
    end
  end
end

# game = GuessingGame.new rand(100)
# last_guess  = nil
# last_result = nil

# until game.solved?
#   unless last_guess.nil?
#     puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
#     puts ""
#   end

#   print "Enter your guess: "
#   last_guess  = gets.chomp.to_i
#   last_result = game.guess(last_guess)
# end

# puts "#{last_guess} was correct!"



# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
It is about running the process unique to this one time.  So rules stay the same but output is different with different input.
When should you use instance variables? What do they do for you?
Good for wanting to have a variable to use anywhere in the class.  They transcend methods.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
After it was mapped in pseudocoding it was easy.  The map took time though.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
If symbols aren’t returned then they give a boolean value of false.  This was not what we were looking for.  We wanted the symbol.
=end