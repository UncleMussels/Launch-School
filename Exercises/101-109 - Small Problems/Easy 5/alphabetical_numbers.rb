# Write a method that takes an Array of Integers between 0 and 19, and returns an 
# Array of those Integers sorted based on the English words for each number=>

# => zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve,
# => thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Understand the problem=>
  # Set constant variable of NUMBERS = {#=> word}
  # Pass range of 0..19 as an array to method
  # Create new unordered array
  # Iterate through unordered array
    # add hash value of number (key) to ordered array
  # Sort ordered array
  # Transform ordered array words back into numbers

NUMBER_WORDS = {
  0=> 'zero', 1=> 'one', 2=> 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=> 'seven', 8=> 'eight',
  9=> 'nine', 10=> 'ten', 11=> 'eleven', 12=> 'twelve', 13=> 'thirteen', 14=> 'fourteen', 15=> 'fifteen', 
  16=> 'sixteen', 17=> 'seventeen', 18=> 'eighteen', 19=> 'nineteen'
}

def order_by_word unordered_array
  ordered_array = []
  unordered_array.each { |num| ordered_array << NUMBER_WORDS[num] }
  ordered_array.sort.map { |word| NUMBER_WORDS.key(word)}
end

p order_by_word((0..19).to_a)


# LS Solution:

# NUMBER_WORDS = %w(zero one two three four
#                  five six seven eight nine
#                  ten eleven twelve thirteen fourteen
#                  fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end
