# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other
# number, and then computes the sum of those multiples. For instance, if the supplied number
# is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Understand the problem:
  # pass number greater than 1 to method
  # iterate through range 1..number
  # select n if n % 3 == 0 or n % 5 == 0
  # sum all numbers selected
  # return sum

def multiple_sum int
  (1..int).select { |n| (n % 3 == 0 || n % 5 == 0) }.sum
end

p multiple_sum 3
p multiple_sum 5
p multiple_sum 10
p multiple_sum 1000