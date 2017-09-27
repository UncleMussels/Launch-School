# Question: What happens when we modify an array while we are iterating over it? What would be output by this code?
# Answer: the array is mutated in real time. 

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

p numbers

#What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

p numbers