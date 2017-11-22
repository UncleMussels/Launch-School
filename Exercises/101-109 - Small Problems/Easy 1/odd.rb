# Write a method that takes one integer argument, which may be positive, negative, or zero.
# This method return true if the number's absolute value is odd. You may assume that the
# argument is a valid integer value.

# inputs: one pos/neg/zero integer
# outputs: true or false
# conditions: if absolute value of integer is odd, return true.  cannot use odd? or even? methods.
# questions: if absolute value is even, return what?
# example: puts is_odd?(2) false
#

def is_odd? (int)
 int % 2 != 0
end

puts is_odd?(2)
puts is_odd?(-2)
puts is_odd?(0)
puts is_odd?(3)
puts is_odd?(-3)