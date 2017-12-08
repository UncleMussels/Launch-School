# Write a method that takes a positive integer or zero, and converts it to a string 
# representation.

# You may not use any of the standard conversion methods available in Ruby, such as
# Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way
# and construct the string by analyzing and manipulating the number.

# Understand the problem:
  # Pass postive int (or zero) to method
  # set string_arr = []
  # loop through number
  # string_arr << num % 10
  # number = number / 10
  # break if number = 0
  # string_arr.reverse.join


DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def convert_to_str number
  string = ''
  loop do 
    string.prepend(DIGITS[number % 10])
    number = number / 10
    break if number == 0
  end
  string
end

p convert_to_str 3000
p convert_to_str 0
p convert_to_str 10




