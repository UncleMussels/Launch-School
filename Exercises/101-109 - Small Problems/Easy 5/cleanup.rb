# Given a string that consists of some words and an assortment of non-alphabetic 
# characters, write a method that returns that string with all of the non-alphabetic
# characters replaced by spaces. If one or more non-alphabetic characters occur in a
# row, you should only have one space in the result (the result should never have
# consecutive spaces).

# Understand the problem: 
  # Pass string to method
  # Call removal method
    # split string into array of words
    # Iterate over array of words
      # Substitute chars with space
    # Concat array into string
  # Gsub string pattern '  ' with ' '
  # return string

def cleanup string
  string.gsub(/\W|\d/, ' ').gsub(/\ (?=\ )/, '')
end

p cleanup "---What's my99 +*& line?"





