# Factorial

# I worked on this challenge [ with: Awilda ].


# Your Solution Below

def factorial (integer)

  if integer==0
    1
  else
    integer * factorial(integer-1)

  end
end
p factorial(5)