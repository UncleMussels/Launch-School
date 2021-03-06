=begin
Question 3

Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end
Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

Bonus 1

What is the purpose of the number % dividend == 0 ?

Bonus 2

What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
=end

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end 
  divisors
end

puts factors(10)
puts factors(-10)
puts factors(0)

# Bonus 1: The purpose of 'number % dividend' is to check if number divided by dividend has a remainder of zero
# Bonus 2: The purpose of the divisors call is to return the factors array at the end of the method.


