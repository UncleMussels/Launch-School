# Write a method that returns an Array that contains every other element of an Array that is
# passed in as an argument. The values in the returned list should be those values that are in
# the 1st, 3rd, 5th, and so on elements of the argument Array.

# Understanding the problem:
  # Pass array argument to method
  # Iterate through array
  # Select every other element of array 
  # Return new array of selected elements

# inputs: array
# outputs: array

# data structures: array

# Algorithm:
  # START
  # PASS array
  # SET new_array = []
  # RETURN array.select {|element| array.index(element).even?}

def odd_elements array
  array.select {|element| array.index(element).even?}
end

def even_elements array
  array.select {|element| array.index(element).odd?}
end

def even_elements2 array
  new_array = []
  array.each_with_index {|element, index| new_array << element if index.odd? }
  new_array
end

p odd_elements([2, 3, 4, 5, 6]) == [2, 4, 6]
p odd_elements(['abc', 'def']) == ['abc']
p odd_elements([123]) == [123]
p odd_elements([]) == []

p even_elements2([2, 3, 4, 5, 6]) == [3, 5]
p even_elements2(['abc', 'def']) == ['def']
p even_elements2([123]) == []
p even_elements2([]) == []
