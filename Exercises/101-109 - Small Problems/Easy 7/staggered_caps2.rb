# Modify the staggered_caps method from the previous exercise so it ignores
# non-alphabetic characters when determining whether it should uppercase or
# lowercase each letter. The non-alphabetic characters should still be
# included in the return value; they just don't count when toggling the 
# desired case.

def staggered_case(string, start_upcase = true)
  staggered = '' 
  current_case = start_upcase

  string.chars.each do |char|
    if char =~ /[a-z]/i
      current_case ? staggered << char.upcase : staggered << char.downcase
      current_case = !current_case
    else
      staggered << char
    end
  end

  staggered
end

p staggered_case('I Love Launch School!', false)
p staggered_case('ALL_CAPS') 
p staggered_case('ignore 77 the 444 numbers')