# Given a string of words separated by spaces, write a method that takes this string
# and returns a string in which the first and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and that the string 
# will always contain at least one word. You may also assume that each string
# contains nothing but words and spaces

# Understand the problem:
  # Pass space-separated string to method
  # Transform string to array split by spaces
  # Iterate through array
  # Swap first and last characteres of each element
  # Concat array
  # Return array

# Inputs: string
# Outputs: striing

# Data Structures:
  # string: input, output
  # array: split string for iteration
  # integer: index of array element characters

# Algorithm:
  # START
  # PASS string to method
  # SET new_string = string.split.map |word|
    # SET first = word[0]
    # SET word[0] = word[-1]
    # SET word[-1] = first
    # END
  # RETURN new_string.join(' ')
  # END

def swap_chars string # my version
  new_string =  string.split.map do |word|
                  first = word[0]
                  word[0] = word[-1]
                  word[-1] = first
                  word
                end
  new_string.join(' ')
end

def swap string # LS version
  new_string =  string.split.map do |word|
                  word[0], word[-1] = word[-1], word[0]
                  word
                end
  new_string.join(' ')
end

p swap_chars('Oh what a wonderful day it is')
p swap_chars('Abcde')
p swap_chars('a')



