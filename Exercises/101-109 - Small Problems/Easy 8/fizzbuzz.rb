# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers between the two
# numbers, except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and
# 5, print "FizzBuzz".

def fizzbuzz(first_num, second_num)
  (first_num..second_num).each do |number|
    puts fizz_or_buzz(number)
  end
end

def fizz_or_buzz(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'fizzbuzz'
  when number % 5 == 0
    'buzz'
  when number % 3 == 0
    'fizz'
  else
    number
  end
end

fizzbuzz(1, 15)