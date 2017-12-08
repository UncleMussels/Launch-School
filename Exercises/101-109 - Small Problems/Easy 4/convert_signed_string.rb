# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# The String may have a leading + or - sign; if the first character is a +, your method should
# return a positive number; if it is a -, your method should return a negative number. If no
# sign is given, you should return a positive number


DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 
}

def str_to_int num_string
  num_array = num_string.chars.map { |char| DIGITS[char] }

  final_number = 0
  count = num_array.length - 1

  num_array.each do |num| 
    final_number += num * (10 ** count)
    count -=1
  end

  final_number
end

def signed_str_to_int num_string
  sign = DIGITS.has_key?(num_string[0]) ? sign = '+' : sign = num_string.slice!(0)
  
  final_number = str_to_int(num_string)
  sign == '-' ? -final_number : final_number
end

p signed_str_to_int '3000'
p signed_str_to_int '+3000'
p signed_str_to_int '-3000'
p signed_str_to_int '0'
p signed_str_to_int '+0'
p signed_str_to_int '-0'


p ''

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end


