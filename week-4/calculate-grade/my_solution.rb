# Calculate a Grade

# I worked on this challenge [by myself ].


# Your Solution Below

def get_grade(score)
  if score >= 90
     "A"
  elsif score >= 80
   "B"
  elsif score >=70
    "C"
  elsif score >= 60
     "D"
  else score < 60
     "F"
  end

end

get_grade(89) # => returns "B", *not* "B+"
get_grade(70)