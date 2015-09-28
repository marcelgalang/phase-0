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