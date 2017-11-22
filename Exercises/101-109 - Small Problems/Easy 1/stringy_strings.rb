# Write a method that takes one argument, a positive integer, and returns a string of 
# alternating 1s and 0s, always starting with 1. The length of the string should match 
# the given integer.

# Understand the problem:
  # takes single argument - positive integer
  # create string of alternating 1s and 0s the length of the integer
  # return the string

# Inputs: positive integer
# Outputs: string

# Data structures
  # number: input
  #string: output

# Test cases: 
  # puts stringy(6) == '101010'
  # puts stringy(9) == '101010101'
  # puts stringy(4) == '1010'
  # puts stringy(7) == '1010101'

# Algorithm:
  # START
  # GET number
  # SET new_string == ''
  # IF valid number
    # number/2.times DO new_string << '10'
    # IF number % 2 == 1
      # new_string << '1'
    # END
  # END
  # RETURN new_string
  # END

  def stringy number, count = 1
    binary_string = ''

    if count == 1
      (number / 2).times {binary_string << '10'}
      binary_string << '1' if number % 2 == 1
    elsif count == 0
      (number / 2).times {binary_string << '01'}
      binary_string << '0' if number % 2 == 1
    end

    binary_string
  end

puts stringy 8, 1
puts stringy 11, 0



