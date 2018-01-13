# Write a method that takes two Array arguments in which each Array contains
# a list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# PSEUDOCODE:

# Pass two array arguments
# Establish counter or index
# Iterate through an array
# multiply array[counter] * arr2[counter]

def multiply_lists(arr1, arr2)
  arr1.zip(arr2).map { |nums| nums[0] * nums[1] }
end

p multiply_lists([3, 5, 7], [9, 10, 11])
