# Write a method that takes a positive integer as an argument and returns
# that number with its digits reversed. Examples:

def reversed_number(num)
  string_num = num.to_s
  string_digits = string_num.chars
  reversed_string_digits = string_digits.reverse
  reversed_string = reversed_string_digits.join('')
  reversed_string.to_i
end


def reversed_number_one_liner(num)
  digits = num.to_s.chars.reverse.join('').to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1

p reversed_number_one_liner(12345)