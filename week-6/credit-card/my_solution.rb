# Cl# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Ali Lyons ].
# I spent [3] hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: boolean value
# Steps:
# create class called Credit Card that takes an integer as an argument
# throw arguement error if input number is less than 16
# take given integer even indexed elements
# double evenly inexed elements
# sum oddly index elements
# split any double digit numbers into single digits
# sum the  two arrays together
# create check_card method that calls the above steps/methods and calcs
#    wether or not the sum of the doubled evens and sum of the odds is  evenly divisible by 10
# else return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(number)
#     @cc_ary = number.to_s.chars.map! {|number| number.to_i}
#     if @cc_ary.length != 16
#       raise ArgumentError.new("number must be 16 digits long")
#     end
#   end

#   def evens_doubler
#     @cc_ary.each_with_index do |n, i|
#       if i.even?
#         @cc_ary[i] = n *= 2
#       end
#     end
#   end

#   def make_single_digit
#     @cc_ary.map! do |number|
#     if number >= 10
#       number.to_s.chars.map! {|number| number.to_i}
#       else
#       number
#       end
#     end
#     @cc_ary.flatten!
#   end

#   def check_card
#     evens_doubler
#     make_single_digit
#     sum = @cc_ary.inject(:+)
#     if sum % 10 == 0
#       true
#     else
#       false
#     end
#   end

# end



# cc = CreditCard.new(1234567891234567)
# p cc.evens_doubler
# p cc.make_single_digit
# p cc.check_card


# Refactored Solution
class CreditCard
  def initialize(number)
    @cc_ary = number.to_s.chars.map! {|number| number.to_i}
    if @cc_ary.length != 16 then raise ArgumentError.new("Number must be 16 digits") end
  end

  def evens_doubler
    @cc_ary.each_with_index do |number,index|
      if index.even?
        then @cc_ary[index] = number *= 2
      end
    end
  end

  def make_single_digit
    @cc_ary.map! do |number|
      if number >=10
      number.to_s.chars.map! {|number| number.to_i}
      else
        number
      end
    end
        @cc_ary.flatten!
  end

  def check_card
    evens_doubler
    make_single_digit
    sum = @cc_ary.inject(:+)
    if sum % 10 == 0
      true
    else
      false
   end
  end

end

cc = CreditCard.new(1234567891234567)
p cc.evens_doubler
p cc.make_single_digit
p cc.check_card




# Reflection
=begin

 6.7
What was the most difficult part of this challenge for you and your pair?
This took much longer than anticipated.  The biggest challenge was keeping track of the status if the variables and what they contained.  Until we realized that map and flatten should be used destructively we struggled.
What new methods did you find to help you when you refactored?
#chars and #inject were the most helpful.
What concepts or learnings were you able to solidify in this challenge?
Destructive methods are sometimes the best if not only way to work through a problem.
=end