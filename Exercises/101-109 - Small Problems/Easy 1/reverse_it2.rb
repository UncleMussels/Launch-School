# Write a method that takes one argument, a string containing one or more words, and returns 
# the given string with all five or more letter words reversed. Each string will consist of
# only letters and spaces. Spaces should be included only when more than one word is present.


# Understand the problem:
  # method takes a string argument of one or more words
  # reverses the letters of words with 5 or more characters
  # returns the reversed string

# Inputs: string of letters and spaces
# Outputs: string of letters and spaces

# Data structures
  # string: output + input
  # array: iterate through string

# Test cases: 
  # puts reverse_words('Professional')          # => lanoisseforP
  # puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
  # puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverses_words string
  new_str = string.split.map do |word|
              word.reverse! if word.length >= 5
              word
            end

  new_str.join(' ')
end

puts reverses_words "It is not that serious"


