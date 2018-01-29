# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.


DIGITS = { 
           'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5,
           'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 'zero' => 0
         }

def word_to_digit(sentence)
  digitized_sentence = sentence.split(/\b/).map do |word|
                         DIGITS[word] ? DIGITS[word] : word
                       end
  digitized_sentence.join
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
