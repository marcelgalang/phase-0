
#Release 1
#input
#1. collecting the strings(grocery items) and integers(quantity)
#2. Update a quantity
#3. Remove and item


#output
#final printed list

#steps
#create the hash
#fill the hash w keys(string) and values(integer)
#check for specific key value pair
#IF key is there update quantity, otherwise add key and value
#IF any Key is "lemondade"  remove that key
#remove an item


# def shopping_list
# grocery_list= {"Lemonade" => 2, "Tomatoes" => 3, "Onions" => 1, "Ice Cream" => 4}

#   p grocery_list


# end

#Release 2: Initial Solution

# def print_shopping_list(x)
#   p x
# end

# def add(x)
#   x.merge!({"Lemonade" => 2, "Tomatoes" => 3, "Onions" => 1, "Ice Cream" => 4})
#   p x
# end

# def delete(hash,key)
#   hash.delete(key)
#   p hash

# end

# def update (hash, item, quan)
#   hash[item]=quan
#   p hash
# end



#Release 4 Refactoring

def delete(hash,key)
  hash.delete(key)
end

def update_add (original_list, additions_list )
   p original_list.merge!(additions_list)
end



#Release 3 Test/ Driver Code

shopping_list = Hash.new

p "This is adding to the list result"
update_add(shopping_list,{"Lemonade" => 5, "Tomatoes" => 3, "Onions" => 1, "Ice Cream" => 4})

p "This is the delete result- takes off lemonade"
delete(shopping_list,"Lemonade")
p shopping_list


p "This is the updating the list result"
update_add(shopping_list,{"Lemonade" => 5, "Gummie Bears" => 7})

=begin

What did you learn about pseudocode from working on this challenge?
It is important to be as specific as possible.
What are the tradeoffs of using Arrays and Hashes for this challenge?
We used hashes right away and did not look back.  Arrays may be easier to manipulate but it would be easy to get lost keeping items and quantities in the same container without designation.
What does a method return?
The output of the array from that method.
What kind of things can you pass into methods as arguments?
Objects like strings, integers or data structures like arrays and hashes
How can you pass information between methods?
Yes you can,  by calling the methods from outside the methods
What concepts were solidified in this challenge, and what concepts are still confusing?
What it takes and how easy it actually is to update a hash.
=end

