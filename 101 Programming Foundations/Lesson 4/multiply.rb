# iterate over and transform elements from an array by passing array and selection criteria into a method

def transform_numbers(numbers, multiplier)
  transformed_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    transformed_numbers << current_number * multiplier

    counter += 1
  end

  transformed_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p transform_numbers(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers