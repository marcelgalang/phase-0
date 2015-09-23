# Your Names
# 1)Marcel Galang
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # error_counter = 3


  # library.each do |k, v|
  #   puts k

  #   if library[k] != library[item_to_make]
  #     p error_counter += -1
  #   end
  # end

  unless library.has_key?(item_to_make)

    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # serving_size = library.values_at(item_to_make)[0]
  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection


