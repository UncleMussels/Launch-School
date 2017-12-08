# Write a method that returns true if the string passed as an argument is a palindrome, false 
# otherwise. A palindrome reads the same forward and backward. For this exercise, case matters 
# as does punctuation and spaces.

# Understanding the problem:
  # Pass string to method
  # Compare string to backwards string
  # Return true or false based on comparison

# Input: string
# Output: boolean

# Data structures:
  # string: input
  # boolean: return value of method
  # array: convert string to array for comparison

# Algorithm
  # START
  # PASS string
  # RETURN true IF string.reverse == string
  # RETURN FALSE
  # END

def is_palindrome? string
  string == string.reverse
end

puts is_palindrome?('madam') 
puts is_palindrome?('Madam') 
puts is_palindrome?("madam i'm adam") 
puts is_palindrome?('356653') 


# Further Exploration

# Write a method that determines whether an array is palindromic; that is, the element values
# appear in the same sequence both forwards and backwards in the array. Now write a method 
# that determines whether an array or a string is palindromic; that is, write a method that
# can take either an array or a string argument, and determines whether that argument is a 
# palindrome. You may not use an if, unless, or case statement or modifier.

def array_palindrome? array
  reverse_array = []
  index = -1

  while reverse_array.length < array.length do
    reverse_array << array[index]
    index -= 1
  end

  reverse_array == array
end

p array_palindrome?(["123", "456", "123"])
