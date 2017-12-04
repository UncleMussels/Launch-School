# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The
# program must compute the tip and then display both the tip and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# Understand the problem:
  # Ask user for bill and tip %
  # Calculate tip amount 
  # Display tip amount and bill total

# Questions
  # Round to 2 decimals?
  # Accept special characters?

# Inputs: String
# Outputs: String

# Data structures:
  # String: input and output
  # Float: convert input; calculate tip + total

# Logical Layer
  # Ask user for bill and tip %
  # Store bill variable, tip variable
  # Convert both variables to floats
  # Calculate + store tip amount 
  # Add tip amount to bill amount, store total
  # Print string of amounts (convert floats to string)

print "=> What is the bill amount? Use '$$.¢¢' format: "
bill_amount = gets.chomp.to_f

print "=> What is the tip percentage? Use only numbers: "
tip_rate = gets.chomp.to_f

tip_amount = (bill_amount * (tip_rate / 100)).round(2)
total_bill = (tip_amount + bill_amount).round(2)

puts "The tip amount is $#{tip_amount}"
puts "The total bill is $#{total_bill}"



