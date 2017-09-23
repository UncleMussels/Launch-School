=begin
Question 2

The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)
Why is this and what are two possible ways to fix this?
=end

# Answer: The result will be an error because you cannot concatenate a string and an integer.

puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 4 is " + (40 + 2).to_s