# Write a method that takes two arguments, a string and a positive integer, and prints 
# the string as many times as the integer indicates.

# requirements: method (string, pos_int) -> puts string  x(pos_int) times.
# test cases: repeat('Hello', 3)
# questions: need to print on new line? The example given is not in line with the specifications

def repeat(string, pos_int)
  pos_int.times { puts string }
end

repeat('Hello', 4)