# Write a method that combines two Arrays passed in as arguments, and returns 
# a new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the 
# same number of elements.

# PSEUDO CODE
  # Pass two arrays as arguments
  # create new blank array
  # arr1.length. times do
    # << arr1[count]
    # << arr2[count]
  # return array

def combine_arrays(arr1, arr2)
  arr1.zip(arr2).flatten
end

p combine_arrays([1, 2, 3], ['a', 'b', 'c'])