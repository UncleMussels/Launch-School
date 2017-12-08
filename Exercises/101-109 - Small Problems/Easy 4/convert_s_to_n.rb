# The String#to_i method converts a string of numeric characters (including an optional plus or
# minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave 
# similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid 
# characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such as 
# String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate
# the result by analyzing the characters in the string.

# Understand the problem:
  # Pass numeric string argument to method
  # create hash of string numeric keys and integer values
  # create numeric_array = []
  # Iterate (map) over string characters
    # Find each key
    # Change to each corresponding value
    # concat array

def convert_to_int num_string
  num_hash = {
    '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
    '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 
  }

  num_array = num_string.chars.map do |char|
                num_hash[char]
              end

  final_number = 0
  count = num_array.length - 1

  num_array.each do |num| 
    final_number += num * (10 ** count)
    count -=1
  end

  p final_number
end

convert_to_int '3000'
convert_to_int '0'




