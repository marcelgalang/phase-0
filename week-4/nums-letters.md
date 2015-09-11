What does puts do?

puts writes onto the screen what comes after it but more specifically returns nil and prints the output on a new line

What is an integer? What is a float?
An integer is a whole number without the decimal places like 5, -7 or 25,739.  A float is a floating point number, or a number with decimal places like 6.18 or 3.14.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

If your numbers are formatted as floats (numbers with numbers after the decimal point) then you can get a decimal value back.  So 11.0 / 2.0 will return 5.5.
If written as integers, a.k.a. whole numbers, then output will only be the whole amounts and not include a remainder.  So 11/2 will return 5.

```ruby
print "Hours in a year "
puts 24 * 365
print "Minutes in a decade "
puts (60 * 24 * 365) * 10 + (60*24*2)
```


How does Ruby handle addition, subtraction, multiplication, and division of numbers?
These are all simple methods that Ruby can operate inline.  It is good to keep in mind whether you are using integers or floats and if your values need to be converted with .to_f or .to_i.  Those can also be applied to strings.
What is the difference between integers and floats?
As described above:
An integer is a whole number without the decimal places like 5, -7 or 25,739.  A float is a floating point number, or a number with decimal places like 6.18 or 3.14.

What is the difference between integer and float division?
An integer will only return a whole number.  An integer will return a value with places after the decimal point.  Dividing with a modulus % will also consider the remainder of a numbers division.
What are strings? Why and when would you use them?
I consider strings to be linguistic or text values.  Anything you can type can become a string.  “Five” is a string, but so is “5”.
What are local variables? Why and when would you use them?
Local variables are variables that only work inside of a method.  When the method is ended they are no longer valid.
How was this challenge? Did you get a good review of some of the basics?
Initially I spent a bit of time over complicating the challenges.  I was thrown off by the rspec believing that it wanted more that simple answers.