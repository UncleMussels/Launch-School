# Write a method that returns one UUID when called with no parameters.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

def uuid_generator
  character_set = %w(a b c d e f 0 1 2 3 4 5 6 7 8 9)

  uuid = ''

  [8, 4, 4, 4, 12].each do |num|
    num.times { uuid << character_set.sample }
    uuid << '-' if num != 12
  end

  uuid
end

puts uuid_generator
puts uuid_generator
