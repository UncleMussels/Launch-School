# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# LS solution:
  # def rotate_array(array)
  #   array[1..-1] + [array[0]]
  # end

def rotate_array(arr)
  rotated_array = [arr[1..-1], arr[0]].flatten
end

def rotate_string(str)
  rotate_array(str.chars)
end

def rotate_integer(int)
  integer_str = rotate_array(int.to_s.chars)
  integer_str.join.to_i
end

p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p rotate_string('Oknotnow')
p rotate_string('a')

p rotate_integer(12345)
p rotate_integer(1)