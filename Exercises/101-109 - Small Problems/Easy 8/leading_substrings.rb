# Write a method that returns a list of all substrings of a string that start
# at the beginning of the original string. The return value should be arranged
# in order from shortest to longest substring.

def substrings_at_start(string)
  substring_arr = []
  0.upto(string.size - 1) do |index|
    substring_arr << string.slice(0..index)
  end

  substring_arr
end


p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')