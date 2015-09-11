# I worked on this challenge [by myself, with: Kim Allen ].


# Your Solution Below

def valid_triangle?(a, b, c)

if a==b && a==c
  p true
  puts "True, an equilateral triangle!"
elsif
  (a%3==0 || a%4==0 || a%5==0) && (b%3==0 || b%4==0 || b%5==0) && (c%3==0 || c%4==0 || c%5==0)
  p true
  puts "True!  This is a right triangle!"
elsif (a+b > c) &&
  (a+c > b) &&
  (b+c > a)
  p true
  puts "this is a triangle"

elsif (a==0 || b==0 ||c==0)
  p false

else
  p false
  puts "Sorry, this is not a triangle."
 end
end


valid_triangle?(100,10,10)