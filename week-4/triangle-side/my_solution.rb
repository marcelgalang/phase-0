# I worked on this challenge with: Kim Allen .


# Your Solution Below


def valid_triangle?(a,b,c)
  if a*b*c == 0
    false
  elsif (a+b > c) && (a+c > b) && (b+c > a)
    true
  end
end


valid_triangle?(100,10,10)