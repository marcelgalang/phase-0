
# Starting with the second to last digit, double every other digit until you reach the first digit.

# Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

# If the total is a multiple of ten, you have received a valid credit card number!
class CreditCard



  def initialize(number)
    @convert = number.to_s.chars.map(&:to_i)
    p @convert
#     @evens = evens
#     @odds = odds
  end

    def evens

      @evens = []
      @convert.each_with_index do |num, index|
        if index.even?
         @evens.push(num)

        end
      end
    end

    def odds
      @odds = []
      @convert.each_with_index do |num, index|
        if index.odd?
          @odds.push(num)

        end
      end
    end

    def new_odds
      @odds.inject{|sum,x| sum + x }
    end

    def new_evens
      evens=@convert.each{|n| n*2 }

      evens.inject{|sum,x| sum + x }
#       p @evens
    end

  def total
    if (new_odds + new_evens) %10 == 0
       "profit"
    else
       "loss"
#       p (new_odds + new_evens) %10
    end
  end
#     def double_evens
#       @evens = evens
#       evens.each{ |i| i * 2}
#       @evens

#     end
end
cc = CreditCard.new(1234567891234567)


  cc.evens
   cc.odds
p cc.new_odds
p cc.new_evens
p cc.total













# class CreditCard



#   def initialize(number)
#     @convert = number.to_s.chars.map(&:to_i)
# #     @evens = evens
# #     @odds = odds
#   end

#   def evens

#     @evens = []
#     @convert.each_with_index do |num, index|
#       if index.even?
#        @evens << num
# #         p @evens
#       end
#     end
#   end

#     def odds
#       @odds = []
#       @convert.each_with_index do |num, index|
#         if index.odd?
#           @odds << num
# #           p @odds

#         end
#       end
#     end




#     def sum_odds
#       @odds = odds
#       odds.inject{|sum,x| sum + x }
#     end

#     def sum_evens
#       @evens = evens.inject{|sum,x| sum + x }
# #       p @evens
#     end

# #     def double_evens
# #       @evens = evens
# #       evens.each{ |i| i * 2}
# #       @evens

# #     end
# end
# cc = CreditCard.new(1234567891234567)

# # #  cc.sum_odds
#  cc.evens
#   cc.odds
#    p cc.sum_odds
#   p cc.sum_evens
#  p cc.double_evens

