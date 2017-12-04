# Write a program that will ask a user for an input of a word or multiple words and give 
# back the number of characters. Spaces should not be counted as a character.

# Understand the problem:
  # Prompt user for word(s)
  # Set words variable
  # Convert words to array
  # SET counter variable
  # Iterate through array
  #   If char != space, counter += 1
  # Return number of chars

# Input: string
# Output: string

# Data structures:
  # strings: input, output
  # array: convert + count input string

# Example:
 # => Please write word or multiple words: walk
 # THere are 4 characters in "walk".

 # => Please write word or multiple words: walk, don't run
 # There are 13 characters in "walk, don't run".

 # Logical layer
  # START
  # GET words
  # SET words = gets.chomp.to_a
  # SET counter = 0
  # words.each
    # IF char != ' '
      # counter += 1
    # ELSE
      # next
  # PRINT counter string
  # END

print "Please write a word or multiple words: "
words = gets.chomp
words_size = words.split.join.size
puts "There are #{words_size} characters in \"#{words}\""


