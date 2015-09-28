# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:3
# ============================================================
p array[1][1][2][0]
#[1] =["inner"[0], ["eagle", "par", ["FORE", "hook"]]][1]]
#[1]=  ["eagle", "par", ["FORE", "hook"]]]]
#[2] = ["FORE", "hook"]]]]
#[0]= [FORE]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================
#hash within an array within a hash
#call the first array => "array"{hash:finished}
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.flatten!.map!{|e| e + 5}
p number_array

# a = [ 1, 2, [3, [4, 5] ] ]
# a.flatten(1)              #=> [1, 2, 3, [4, 5]]

# nested_array.each do |element|
#   if element.kind_of?(Array)
#     element.each {|inner| p inner}
#   end
# end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.flatten!.map! {|e| e + "ly"}
p startup_names

=begin
  What are some general rules you can apply to nested arrays?
Go through the entire array and make a count for each array.
What are some ways you can iterate over nested arrays?
You can iterate over the first dimension and then call to iterate over another as needed.  You can also flatten the whole array and iterate over that but it is destructive.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#map and #flatten were essential.  These method were also the key to me solving other challenges this week.


=end