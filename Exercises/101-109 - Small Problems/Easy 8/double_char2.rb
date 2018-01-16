# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.


def double_consonants(string)
  doubled_string = ''
  string.chars.each do |char|
    doubled_string << char
    doubled_string << char if consonant?(char.downcase)
  end

  doubled_string
end

def consonant?(char)
  char.match?(/[bcdfghjklmnpqrstvwxyz]/)
end

p double_consonants('String')
p double_consonants("Hello-World!")
p double_consonants("July 4th")
p double_consonants('')