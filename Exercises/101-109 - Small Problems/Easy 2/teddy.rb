# Build a program that randomly generates and prints Teddy's age. To get the age, 
# you should generate a random number between 20 and 200.

# Understand the problem:
  # Call the method
  # Generate a rand num 20..200
  # Print the number in a string
  # Return value isn't used

# Test cases:
  # "Teddy is 69 years old!"

# Inputs: none
# Outputs: String

# Data Structures:
  # Random for generating number
  # Integer for rand num
  # String to print the num 

# Logical Syntax
  # START
  # SET random num 20..200
  # PRINT string including random number
  # END

def teddy_age
  puts "Give us a name!:"
  name = gets.chomp.capitalize
  name = 'Teddy' if name == ''

  puts "#{name} is #{rand(20..200)} years old!"
end

teddy_age