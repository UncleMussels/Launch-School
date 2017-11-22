# Part 1

# Write a method that takes one argument, a string, and returns the same string with the
# words in reverse order.

# Examples:

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# The tests above should print true

# inputs: one string argument
# outputs: method returns same string with words (not characters) in reverse order. 
# example: "puts reverse_sentence('Reverse these words') == 'words these Reverse'" will return true
# requirements: cases and character order of words should remain intact

def reverse_sentence(string)
  new_sentence = string.split.reverse.join(' ')
end

puts reverse_sentence('ok now You') == 'You now ok'

