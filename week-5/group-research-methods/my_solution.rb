# # Research Methods

# # I spent [] hours on this challenge.

 i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
 my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  found_words = Array.new
  source.each { |word|
  word = word.to_s
  if (word.include? thing_to_find)
    found_words.push(word)
  end
  }
  return found_words
end

def my_hash_finding_method(source, thing_to_find)
  found_pets = Array.new
  source.each_pair { |name, val|
    if(val == thing_to_find)
      found_pets.push(name)
    end
  }
  return found_pets
end


#DRIVER CODE
puts my_array_finding_method(i_want_pets, "t")
puts my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.
=begin
In my_array_finding_method I used the Array method each, which iterates
through the entire array and allows access to each element at each
index. I used the Fixnum method to_s which converts a Fixnum to a
string. I used the boolean string method inlude? which tests if the
string contains the substring provide as an argument, and returns true
if it does. I used the array method push, which pushes the argument
into the end of the array.
In my_hash_finding_method the hash method each_pair, which iterates
through the hash and allows access to each key value pair. I used the
Array method push again to push the name into the array.
=end

# Person 2

def my_array_modification_method!(source, things_to_modify)
  n = things_to_modify
  source.map!{ |i| i.kind_of?(Integer) ? (i + n) : i }

end


def my_hash_modification_method!(source, thing_to_modify)
  n = thing_to_modify
  if n > 0
    source.each { |k, v| source[k] = v + n}
  end
end

# Identify and describe the Ruby method(s) you implemented.
# .map/.map! iterates the given code block to each element (of self).  In this case it adds 1 to the integers
#.kind_of? determines if the element is what we are looking for, in this case, an integer.  It is asking "what kind of element is this?"
#.each iterates over every key/value pair



# Person 3
def my_array_sorting_method(source)
  i_want_pets.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(source)
   my_family_pets_ages.sort_by {|k, v| v}
end

# Identify and describe the Ruby method(s) you implemented.
# I used the method sort_by to sort the arrays and hashes.
# sort_by works because it sorts the data structure by whatever code block is inside, so for example, for the pet's ages, you input a key and value inside the code block and then sort it by the value.
#


# # Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |item| item.to_s.include?(thing_to_delete) }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |key, value| key == thing_to_delete }
end


# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#Share any tricks you used to find and decipher the Ruby Docs
# When you need to figure out which Ruby documentation to look at, you should figure out what tye of object you are dealing with.
# In this case, we are working with arrays and strings, so I went into the Ruby documentation for arrays. First, I wanted to
# figure out if any of the array items contained something, we need to delete it. On the Ruby Docs for arrays, I found delete_if method
# which takes an array and iterates through each item. I then gave it a block which had logic for determining if the item should be deleted.
# For this problem, I called delete_if on the source parameter and in the block I converted the current item (item) to a string so I could
# use the include? method. I gave the include? method thing_to_delete, and it returns true if the current item inclides the thing to delete.
# Since that returns true, the delete_if method will remove the item from the array and go onto the next item. For my hash I went into the Ruby documentation
# for Hashes and gladly found a delete_if method. It worked similary to the array delete_if, but instead I passed in a key and value for the block, and
# if the key was equivalent to what we passed in for thing_to_delete, it would delete the key value pair.


# # Person 5
def my_array_splitting_method(source)
 source.partition{|item| item.kind_of?(Fixnum)}
end
p my_array_splitting_method(i_want_pets)



def my_hash_splitting_method(hash, age)
  young_pets = hash.select {|k,v| v <= age}
  old_pets = hash.select {|k,v| v > age}
  final_array = Array.new
  final_array.push(young_pets.to_a)
  final_array.push(old_pets.to_a)
end
 # This line is here to make sure all tests initially fail. Delete it when you begin coding.

p my_hash_splitting_method(my_family_pets_ages, 4)

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# ---For the array splitting method I used the .partition method. To use this I needed to make fix numbers the determining (boolean) factor. So If the element in the array was a fixed number then it would return true meaning it would be partitioned into its own array. More info on this cool method below as well as its link to the ruby docs.
       #- http://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-partition
       #-http://stackoverflow.com/questions/5686493/best-way-to-split-arrays-into-multiple-small-arrays-in-ruby
# ---For hash splitting I first used .select to select all the pets of a specific age and grouped them into their own hashes (young_pets & old_pets). After the selection I then created an array to house both groups of pets and pushed each hash (young_pets & old_pets) in to the placeholder array converting them to arrays as well using .to_a.

# ---Personally I found it most useful to search the web for method ideas before scouring the ruby docs. I would focus most on the specific google search criteria that I used and refine it as I got 'warmer.' That being said, I would love to understand better what others are doing to become more efficient.



# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #