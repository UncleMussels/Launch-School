# Write a method that takes a string, and returns a new string in which every
# character is doubled.

def repeater(string)
  doubled_string = ''
  string.chars.each do |char|
    doubled_string << char * 2
  end

  doubled_string
end



p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''