# Write a method that displays a 4-pointed diamond in an n x n grid, where n
# is an odd integer that is supplied as an argument to the method. You may
# assume that the argument will always be an odd integer. Example:

# diamond(3) == 
#  *
# ***
#  *

def make_row(count, width)
  diamonds = '*' * (count * 2 + 1)
  puts diamonds.center(width)
end

def diamond(width)
  max_spaces = width / 2
  0.upto(max_spaces - 1) { |count| make_row(count, width) }
  max_spaces.downto(0) { |count| make_row(count, width) }
end

diamond(5)
diamond(9)