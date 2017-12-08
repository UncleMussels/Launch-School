# Write a method that takes a string argument and returns a new string that contains 
# the value of the original string with all consecutive duplicate characters collapsed
# into a single character. You may not use String#squeeze or String#squeeze!

# Undestand the problem:
  # Pass string argument to method
  # Remove all duplicate concurrent characters
  # Return new string

def condense string
  condensed = ''
  string.chars.each_with_index do |char, index|
    condensed << char if string[index] != string[index + 1]
  end
  condensed
end

p condense 'ddaaiillyy ddoouubbllee'
p condense 'ggggggggggggggg'