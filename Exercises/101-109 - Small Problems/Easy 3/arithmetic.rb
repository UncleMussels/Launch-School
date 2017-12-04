# Write a program that prompts the user for two positive integers, and then prints 
# the results of the following operations on those two numbers: addition, subtraction, 
# product, quotient, remainder, and power. Do not worry about validating the input.

# Understand the problem:
  # Prompt for 2 separate positive integers
  # Save integers to array
  # Perform operations on both integers
  # Print results

# Inputs: string
# Outputs: string

# Data structures
  # string: inputs and outputs
  # integer: convert input strings
  # array: save converted inputs
  # hash: save results

# Logical layer
  # START
  # SET ops_hash = {}
  # GET 1st number
  # SET 1st variable.to_i
  # GET 2nd number
  # SET 2nd variable.to_i
  # CALL ops_hash(1st, 2nd)
  # PRINT ops_hash 
  # END

def operations numbers
  ops = %w(+ - * / % **)
  counter = 0

  loop do
  puts "=> #{numbers[0]} #{ops[counter]} #{numbers[1]} = #{numbers.reduce(ops[counter].to_sym)}"
  counter += 1
  break if counter == 6
  end

end

numbers = []

puts "=> What is your first number?"
numbers << gets.chomp.to_f

puts "=> What is your second number?"
numbers << gets.chomp.to_f

operations(numbers)

