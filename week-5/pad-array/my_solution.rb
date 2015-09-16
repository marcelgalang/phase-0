# Pad an Array

# I worked on this challenge [by myself, with: Eric Shou ]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
#input
#minimum size array

#output
#new array with pad value up to the minimum size

#steps
#1. Create an IF statement that returns the array IF the minimum size is less than or equal to the array.
#2. Create another IF statement that returns the array if min_size is equal to 0
#3. Create an empty container object for the new padded array
#4. Push value to array until min size is met

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  difference = min_size - array.length
  if difference <= 0
    return array
  else
    difference.times do
      array.push(value)
    end
  end

  return array
end

def pad(array, min_size, value = nil) #non-destructive
  newer_arr = Array.new(array)
  difference = min_size - array.length
  if difference <= 0
    return newer_arr
  else
    difference.times do
      newer_arr.push(value)
    end
  end

  return newer_arr

end

=begin
Were you successful in breaking the problem down into small steps?

After a bit of debate and trial and error we were able to break it down into digestible parts. We talked it out. By out I mean out loud.  We would try to verbalize what we wanted to see.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

At times the lack of detail in the pseudocode left us pseudocoding even more.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

No.  There were issues making the non-destructive pad work and make it truly non-destructive.
When you refactored, did you find any existing methods in Ruby to clean up your code?

.push and .length were helpful.
How readable is your solution? Did you and your pair choose descriptive variable names?

We renamed the variables after we solved the exercise.  Having array, new_arr and newer_arr was confusing.
What is the difference between destructive and non-destructive methods in your own words?

A non destructive method will allow you to still call the original array.  Destructive will not.
=end