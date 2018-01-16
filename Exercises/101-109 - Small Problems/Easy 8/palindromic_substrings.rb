# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and
# pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba"
# nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Pseudocode
  # Pass string to method
  # iterate through string
    # make array of every available combination
  # Iterate through array
    # select palindromes
    # add to new array
  # return palindrome array

def substrings(string)
  substring_arr = []
  count = 0

  until count == string.size do
    count.upto(string.size - 1) do |index|
      substring_arr << string.slice(count..index)
    end
    count += 1
  end

  substring_arr
end

def palindromes(string)
  palindrome_arr = []
  substring_arr = substrings(string)
 
  substring_arr.each do |string|
    if string.size > 1
      palindrome_arr << string if string == string.reverse
    end
  end
  palindrome_arr
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

