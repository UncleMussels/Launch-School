# Write recursive method that will supply the nth number in the fibonacci sequence

def fibonacci_number(n)
  return 1 if n <= 2
  fibonacci_number(n - 1) + fibonacci_number(n - 2)
end

p fibonacci_number(5)


