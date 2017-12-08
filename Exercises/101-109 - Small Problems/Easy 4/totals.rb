# Write a method that takes an Array of numbers, and returns an Array with the same number 
# of elements, and each element has the running total from the original Array.

def array_totals arr
  arr.each_with_object([]) { |num, sum| sum << (1..num).sum }
end

p array_totals [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]