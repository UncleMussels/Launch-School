# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# PSEUDOCODE:
  # Pass two arrays of different or equal size to method
  # create new array of arrays; every combination between arr1 and arr2
  # map combo array w/ product of each individual array
  # return mapped array




def multiply_pairs(arr1, arr2)
  pairs_arr = arr1.product(arr2)
  pairs_arr.map { |pair| pair.reduce(:*) }.sort
end

p multiply_pairs([2, 4], [4, 3, 1, 2])