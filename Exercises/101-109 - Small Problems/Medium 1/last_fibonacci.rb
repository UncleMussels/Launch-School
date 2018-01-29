# In the previous exercise, procedural_fibonacci, we developed a procedural
# method for computing the value of the nth Fibonacci numbers. This method was
# really fast, computing the 20899 digit 100,001st Fibonacci sequence almost
# instantly.

# In this exercise, you are going to compute a method that returns the last
# digit of the nth Fibonacci number.

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

# FURTHER EXPLORATION:

def fib_last_quick(nth)
  fibonacci_last(nth % 60)
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fib_last_quick(123456789) # -> 4


