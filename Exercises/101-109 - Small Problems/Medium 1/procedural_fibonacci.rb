# Rewrite your recursive fibonacci_nth method so that it computes its results
# without recursion.

# LS Solution:
# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last
# end

def fibonacci(n)
  fib = [1, 1]

  (n-2).times do 
    fib[0], fib[1] = fib[1], (fib[0] + fib[1])
  end

  fib[1]
end

p fibonacci(100)
p fibonacci(1)
p fibonacci(2)
