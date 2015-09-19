# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Ian Lockwood]

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def mode (arr)
  idx = 0
  occurences = 0
while idx < arr.length
  if arr.count(arr[idx]) > occurences
    occurences = arr.count(arr[idx])
  end
  idx += 1
end
  new_array = []
  new_idx = 0
while new_idx < arr.length
  if occurences == arr.count(arr[new_idx])
    new_array << arr[new_idx]
  end
    new_idx += 1
end
  h = {}
  final_array = []
  newer_idx = 0
  while newer_idx < new_array.length
    h[new_array[newer_idx]] = 0
    newer_idx += 1
  end
  final_array = h.collect {|key,value| key }
  return final_array
  end

p mode([1,2,3,3])



# 3. Refactored Solution
def mode (arr)
  idx = 0
  occurences = 0
while idx < arr.length
  if arr.count(arr[idx]) > occurences
    occurences = arr.count(arr[idx])
  end
  idx += 1
end
  h = {}
  idx = 0
while idx < arr.length
  if occurences == arr.count(arr[idx])
    h[arr[idx]] = 0
  end
    idx += 1
end
  final_array = h.collect {|key,value| key }
  return final_array
  end

p mode([1,2,3])



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
Initially, we looked to solve in a hash but my pair realized that we needed to stay working with the array until the final steps.  We wanted to count the occurrences and compare the length before making the hash.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
I think it was better but there was still a giant hole in the section that would have steps to find the solution.  the set up was better though.

What issues/successes did you run into when translating your pseudocode to code?
Finding the correct words helped with using the right method.  This too some reconsideration in practice.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
The methods .count and .length were vital for comparisons.  The .collect made the hash conversion to array much easier.  Implementing was not hard.  Finding or thinking in terms of the methods that exist was more difficult.
=end