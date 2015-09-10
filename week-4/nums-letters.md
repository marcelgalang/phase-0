What does puts do?

puts writes onto the screen what comes after it but more specifically returns nil and prints the output on a new line

What is an integer? What is a float?
An integer is a whole number without the decimal places like 5, -7 or 25,739.  A float is a floating point number, or a number with decimal places like 6.18 or 3.14.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

If your numbers are formatted as floats (numbers with numbers after the decimal point) then you can get a decimal value back.  So 11.0 / 2.0 will return 5.5.
If written as integers, a.k.a. whole numbers, then output will only be the whole amounts and not include a remainder.  Sp 11/2 will return 5.

```ruby
print "Hours in a year "
puts 24 * 365
print "Minutes in a decade "
puts (60 * 24 * 365) * 10 + (60*24*2)
```