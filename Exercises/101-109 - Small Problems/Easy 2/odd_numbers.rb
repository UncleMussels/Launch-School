# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed 
# on separate lines.

# Understand the problem
  # Loop through range 1..100
  # print all odd numbers (inclusive) on separate lines 

(1..100).each  {|num| puts num if num.odd?}