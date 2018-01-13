# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# PSEUDOCODE
  # Pass string argument to method
  # Break string into array of words
  # Iterate through array
    # Capitalize each first letter, lowercase the rest
  # Join array into string
  # Return string

# LS Solution:

# def word_cap(words)
#   words.split.map(&:capitalize).join(' ')
# end

# In the solution, (&:method_name) is shorthand notation for :
# { |item| item.method_name }
# We can use this shorthand syntax with any method that has no required arguments.

def capitalize(string)
  words = string.split
  words.each do |word| 
    word.downcase!
    word[0] = word[0].upcase
  end

  words.join(' ')
end



p capitalize('four score and seven') 
p capitalize('the javaScript language')
p capitalize('this is a "quoted" word')



