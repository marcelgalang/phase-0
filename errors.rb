# Analyze the Errors

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase="Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"

end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error? 172
#
# 2. What is the line number where the error occurs? 17
#
# 3. What is the type of error message? syntax error
#
# 4. What additional information does the interpreter provide about this type of error? unexpected end-of-input
#
# 5. Where is the error in the code?  Expecting keyword end
#
# 6. Why did the interpreter give you this error? The while loop is never closed.
#

# --- error -------------------------------------------------------

south_park=place


# 1. What is the line number where the error occurs?37
#
# 2. What is the type of error message? Undefined local variable or method
#
# 3. What additional information does the interpreter provide about this type of error? It is a NameError
#
# 4. Where is the error in the code? after 'south_park', no value given
#
# 5. Why did the interpreter give you this error? methods and variables need to have values even if the value is nothing
#

# --- error -------------------------------------------------------

cartman()
  end



# 1. What is the line number where the error occurs?175
#
# 2. What is the type of error message? syntax error
#
# 3. What additional information does the interpreter provide about this type of error? unexpected end of input
#
# 4. Where is the error in the code? after the method and paramaters
#
# 5. Why did the interpreter give you this error? Method was not ended
#

# --- error -------------------------------------------------------

def cartmans_phrase(a)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs? 71
#
# 2. What is the type of error message? wrong number of arguments
#
# 3. What additional information does the interpreter provide about this type of error? ArgumentError
#
# 4. Where is the error in the code? after the method name
#
# 5. Why did the interpreter give you this error? It needed a argument assigned
#

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Barbara Streisand")

# 1. What is the line number where the error occurs? 90
# 2. What is the type of error message? Wrong number of arguments
#
# 3. What additional information does the interpreter provide about this type of error? it is an ArguementError
#
# 4. Where is the error in the code? after 'cartman-says'
#
# 5. Why did the interpreter give you this error? no arguement was defined for the method/variable
#



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs? 110
#
# 2. What is the type of error message? wrong number of arguments
#
# 3. What additional information does the interpreter provide about this type of error? the method it is in 'cartmans_lie'
#
# 4. Where is the error in the code? Line 114
#
# 5. Why did the interpreter give you this error? Line 114 needs another argument
#

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs? Line 129
#
# 2. What is the type of error message? String cannot be coerced into Fixnum
#
# 3. What additional information does the interpreter provide about this type of error? it is a TypeError
#
# 4. Where is the error in the code?on Line 120
#
# 5. Why did the interpreter give you this error?the string and the integer need to swithc places
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 0


# 1. What is the line number where the error occurs? Line 144
#
# 2. What is the type of error message? ZeroDivisionError
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code? value can either be 0 but must be declared as 0, not a number divided by 0
#
# 5. Why did the interpreter give you this error? unacceptable math
#

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs? Line 160
#
# 2. What is the type of error message? LoadError
#
# 3. What additional information does the interpreter provide about this type of error? the path it is looking on
#
# 4. Where is the error in the code? No cartmans_essay.md to be seen
#
# 5. Why did the interpreter give you this error? It cannot find other file
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#The method cartman_hates threw me off as adding an end to the last line as suggested by the terminal cancelled out the rest of the errrors by wrapping the whole file up.

#How did you figure out what the issue with the error was?
#I asked Caitlyn in office hours.

#Were you able to determine why each error message happened based on the code?
#Yes.

#When you encounter errors in your future code, what process will you follow to help you debug?
#I learned to look at errors that can effect the whole file or the rest of the file and to make sure loops and methods are closed out.