# Write a method that takes two strings as arguments, determines the longest of the two strings,
# and then returns the result of concatenating the shorter string, the longer string, and the 
# shorter string once again. You may assume that the strings are of different lengths.

# Understand the problem:
  # Pass two string arguments 
  # Compare string lengths
  # Concat shorter string + longer string + shorter string
  # Return concat string

# Inputs: strings
# Outputs: string

# Data Structures
  # string: input, output

# Algorithm
  # START
  # SET string1 string2
  # IF string1.length > string2.length
    # #{string1}#{string2}#{string1}
  # ELSE 
    # #{string2}#{string1}#{string2}
  # END
  # END

def string_concat string1, string2
  if string1.length >= string2.length
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

puts string_concat "Its me","Its you"
