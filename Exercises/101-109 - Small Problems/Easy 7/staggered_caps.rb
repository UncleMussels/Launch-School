# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in 
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count 
# as characters when switching between upper and lowercase.

def staggered_case(string, start_upcase = true)
  staggered = '' 
  current_case = start_upcase

  string.chars.each do |char|
    current_case ? staggered << char.upcase : staggered << char.downcase
    current_case = !current_case
  end

  staggered
end

p staggered_case('I Love Launch School!', false)
p staggered_case('ALL_CAPS') 
p staggered_case('ignore 77 the 444 numbers')