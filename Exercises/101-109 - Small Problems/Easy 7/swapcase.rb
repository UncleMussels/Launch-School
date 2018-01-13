# Write a method that takes a string as an argument and returns a new string 
# in which every uppercase letter is replaced by its lowercase version, and 
# every lowercase letter by its uppercase version. All other characters should 
# be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(string)
  swapped_string = ''

  string.chars.each do |char|
    if char =~ /[A-Z]/
      swapped_string << char.downcase
    elsif char =~ /[a-z]/
      swapped_string << char.upcase
    else
      swapped_string << char
    end
  end

  swapped_string
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')