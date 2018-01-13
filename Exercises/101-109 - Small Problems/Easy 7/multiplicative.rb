# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.

# LS Solution:

# def show_multiplicative_average(numbers)
#   product = 1.to_f
#   numbers.each { |number| product *= number }
#   average = product / numbers.size
#   puts format('%.3f', average)
# end


def print_average(array)
  average = array.reduce(:*) / array.size.to_f
  puts format('%.3f', average)
end

print_average([3, 5])
print_average([6])
print_average([2, 5, 7, 11, 13, 17])