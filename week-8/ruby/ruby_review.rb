# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# a fibonacci is
#   an integer  that equals that number squared multiplied by five plus or minus four and that integer is divisible by itself and equals itself (perfect square)

# num is fibonacci if 5(num*num)+4 or 5(num*num)-4
# # 0.upto(10) {|x|
#   p [x, Math.sqrt(x), Math.sqrt(x)**2]
# }

# Initial Solution

def is_fibonacci?(num)
  x = num
  y = (x**2)*5+4
  z = (x**2)*5-4
  if (y/y==y || z/z==z)
    p x, y, z
    return true
  else
    false
  end

end

# So, we can conclude, a number cannot be an exact or perfect square if
# -        it ends in 2, 3,7 or 8
# -        it terminates in an odd number of zeros
# -        its last digit is 6 but its penultimate (tens) digit is even
# -        its last digit is not 6 but its penultimate (tens) digit is odd
# -        its last digit is 5 but its penultimate (tens) digit is other than 2
# -        its last 2 digits are not divisible by 4 if it is even number

def square(num)
  x = num
  a =[]
  a = x.to_s.split(//)

  if a[-1] == 2 || 3 || 7 || 8
    return false
  elsif a[-1] && a [-2] && a[-3] == 0
    return false
  elsif a[-1]==6 && a[-2]%2==0
    return  false
  elsif a[-1]!=6 && a[-2]%2!=0
    return false
  elsif a[-1]==5 && a[-2]!=2
    return false
  elsif (a[-2].to_i+a[-1].to_i+10)%4==0
  else
    true
end







 # a = []

 #  if x >= 1000000
 #    x = x.to_s
 #    a = x.split(//)
 #    a.insert(-4, ",").insert(-8, ",").join


# Refactored Solution







# Reflection
