# Modify the word_sizes method from the previous exercise to exclude non-letters when
# determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes sentence
  counts = Hash.new(0) # (0) sets the value of any nonexistant key as 0, which imitates initiating the variable
  sentence.split.each do |word|
    word = word.delete("^a-z", "^A-Z") # LS solution: ('^A-Za-z')
    counts[word.length] +=1
  end
  counts
end

p word_sizes 'Four score and 7seven7.'
p word_sizes 'Hey diddle diddle, the cat and the fiddle!'
p word_sizes "What's up doc?"
p word_sizes ''

# word.gsub(/[^a-z]/i, '')