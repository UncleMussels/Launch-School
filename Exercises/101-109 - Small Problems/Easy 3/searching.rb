# Write a program that solicits 6 numbers from the user, then prints a message that describes
# whether or not the 6th number appears amongst the first 5 numbers.

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].

# Understand the problem:
  # Prompt user for and store 6 numbers in an array
  # Iterate over numbers to find if 6th number matches any of 1-5
  # Tell the user the result

# Inputs: strings
# Outputs: strings

# Data structures
  # Strings: used to colect input and dispplay output
  # Array: store string responses
  # Boolean: used to check if 6th num is in array

# Logical layer
  # START
  # WHILE array.size < 7
    # GET num
    # SET array << num
  # IF array[5].in? array[0]..array[4]
    # PRINT confirmation
  # ELSE 
    # PRINT declination
  # END
  # END

def is_valid? num
  num.to_i.to_s == num
end

def in_array? arr
  arr[0..4].include?(arr[5])
end

ordinals = %w(1st 2nd 3rd 4th 5th final)

array_of_numbers = []

until array_of_numbers.size == 6
  puts "=> Enter your #{ordinals[array_of_numbers.length]} number:"
  num = gets.chomp

  if is_valid?(num)
    array_of_numbers << num
  else 
    puts "=> That is not a valid number!"
  end
end

if in_array?(array_of_numbers)
  puts "#{array_of_numbers[5]} is in #{array_of_numbers[0..4]}"
else
  puts "#{array_of_numbers[5]} is not in #{array_of_numbers[0..4]}"
end
