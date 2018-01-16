# Write a method that takes an Array of numbers and then returns the sum of
# the sums of each leading subsequence for that Array. You may assume that the
# Array always contains at least one number.

# LS Solution:

# def sum_of_sums(numbers)
#   sum_total = 0
#   1.upto(numbers.size) do |count|
#     sum_total += numbers.slice(0, count).reduce(:+)
#   end
#   sum_total
# end

def sum_of_sums(array)
  sum_total = 0
  array.size.times do 
    sum_total += array.reduce(:+)
    array.pop
  end

  sum_total
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])




