# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that
# computes the square of its argument (the square is the result of multiplying a number by itself).

# Further exploration: Using the multipy method, turn the square method into a method that
# powers its arguments

def product arg1, arg2
    arg1 * arg2
end

def powered number, n
  return 1 if n == 0
  result = 1
  n.times { |n| result = product(number, result) }
  result
end

p powered(2, 2) == 4
p powered(-5, 3) == -125
