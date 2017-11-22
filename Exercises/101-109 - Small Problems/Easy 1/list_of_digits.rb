# Write a method that takes one argument, a positive integer, and returns 
# a list of the digits in the number.

# inputs: one positive integer
# outputs: returns list of each digit in the number
# conditions: 
# questions: have to be in array form? or each char on a new line?
# examples:
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

def show_digits(integer)
  numbers = integer.to_s.chars
  numbers.map! do |num|
    num.to_i
  end
end

puts show_digits(99) == [9, 9]