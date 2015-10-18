# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
# take string as input
# break up string by words
# reverse each word(iterate trhogh)
# put to new string and join it to be a string




# Initial Solution



 def reverse_words(s)
    s.split(/\s+/).map
    {|w|wl=w.length-1;
      (0..wl).map{|i|w[wl-i]}.join}.join(' ')
  end








# Reflection