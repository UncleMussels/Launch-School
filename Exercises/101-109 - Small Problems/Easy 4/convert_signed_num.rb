# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as 
# Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from
# the previous exercise.




DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def int_to_str number
  string = ''
  loop do 
    string.prepend(DIGITS[number % 10])
    number = number / 10
    break if number == 0
  end
  string
end

def signed_int_to_str number
  return '0' if number == 0
  sign = number < 0 ? '-' : '+'
  sign + int_to_str(number.abs)
end 

p signed_int_to_str 3000
p signed_int_to_str -3000
p signed_int_to_str -3001
p signed_int_to_str 0