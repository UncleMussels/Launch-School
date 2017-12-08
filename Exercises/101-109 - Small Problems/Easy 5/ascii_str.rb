
# Write a method that determines and returns the ASCII string value of a string that is passed
# in as an argument. The ASCII string value is the sum of the ASCII values of every character 
# in the string. (You may use String#ord to determine the ASCII value of a character.)

# Understand the problem:
  # pass string to method
  # convert string to array of chars
  # iterate through array
  # sum ascii value of each char
  # return ascii value

def ascii_value string
  string.chars.inject(0) { |sum, char| sum + char.ord}
end

p ascii_value 'Four score'
p ascii_value 'a'
p ascii_value ''