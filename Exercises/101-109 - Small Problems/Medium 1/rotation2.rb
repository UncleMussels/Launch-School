# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
# You may assume that n is always a positive integer.

def rotate_array(arr)
  rotated_array = [arr[1..-1], arr[0]].flatten
end

def rotate_rightmost_digits(integer, n)
  int_array = integer.to_s.chars
  rotated_array = int_array[0..(-(n+1))] + rotate_array(int_array[(-n)..-1])
  rotated_array.join.to_i
end


p rotate_rightmost_digits(735291, 1) 
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917