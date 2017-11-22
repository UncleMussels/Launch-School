# Write a method that takes one argument, an array containing integers, and returns the 
# average of all numbers in the array. The array will never be empty and the numbers 
# will always be positive integers.

# Understand the problem:
  # Get array of integers
  # Iterate through array
    # set sum of integers
  # set average of sum (no floats)
  # return average

# Inputs: array
# Outputs: integer

# Data structures
  # inputs: array, integers
  # outputs: integer

# Test cases: 
  # puts average([1, 5, 87, 45, 8, 8]) == 25
  # puts average([9, 47, 23, 95, 16, 52]) == 40
  
# Algorithm:
  # START
  # GET array 
  # SET sum = 0
  # SET average = 0.0
  # Array.each DO 
    # Sum += i
  # SET average = sum / array.size
  # RETURN average
  # END


def array_average arr
  arr_sum = 0.0

  arr.each do |num|
    arr_sum += num
  end

  arr_avg = arr_sum / arr.size
end

puts array_average([9, 47, 23, 95, 16, 52])