# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Understand the problem
  # Get positive integer
  # Separate numeric characters
  # Sum numeric characters
  # Return sum

# Requirements
  # Method takes only one positive integer
  # Must return a positive number
  # Write code withour basic looping constructs (while, until, loop, each)

# Inputs: integer (argument)
# Outputs: integer (method return)

# Algorithm
  # START
  # GET integer argument
  # SET sum of int_arr = 0
  # SET int_arr = integer.split
  # SET sum of int_arr
  # RETURN sum


def digit_sum integer
  total = 0
  sum = integer.digits.collect { |num| total += num }.last
end

puts digit_sum 95
puts digit_sum 100000001



