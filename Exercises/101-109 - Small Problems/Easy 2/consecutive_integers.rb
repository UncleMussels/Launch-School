# Write a program that asks the user to enter an integer greater than 0, then asks if the user
# wants to determine the sum or product of all numbers between 1 and the entered integer.

# Understand the problem:
  # Prompt the user for an integer
  # Store user input
  # Prompt user for next action
  # Store user input
  # Calculate result
  # Display result

# Inputs: string
# Outputs string

# Data structures
  # String: input, output
  # Integer: convert input, calculate sum or product

# Logical layer
  # GET integer string
  # SET integer.to_i 
  # GET directive string
  # SET directive 
  # IF directive == 'sum'
    # SET sum = 1..integer
  # ELSIF directive == 'product'
    # SET product = product of all integers 1..integer
  # PRINT result

def find_sum int
  (1..int).inject { |sum, num| sum + num }
end

def find_product int
  (1..int).reduce(1, :*)
end

print "=> Please enter an integer greater than 0: "
number = gets.chomp.to_i

print "=> Enter 's' to compute the sum or 'p' to compute the product: "
directive = gets.chomp

if directive == 's'
  puts "The sum of the integers between 1 and #{number} is #{find_sum(number)}"
elsif directive == 'p'
  puts "The product of the integers between 1 and #{number} is #{find_product(number)}"
end
  