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