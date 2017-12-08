# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes sentence
  counts = Hash.new(0) # (0) sets the value of any nonexistant key as 0, which imitates initiating the variable
  sentence.split.each do |word|
    counts[word.length] +=1
  end
  counts
end

p word_sizes 'Four score and seven.'
p word_sizes 'Hey diddle diddle, the cat and the fiddle!'
p word_sizes "What's up doc?"
p word_sizes ''