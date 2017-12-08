# Create a method that takes two arguments, multiplies them together, and returns the result.

# Example:
  # multiply(5, 3) == 15

# Understand the problem:
  # Pass 2 arguments to method
    # Validate arguments
  # Convert arguments to integer
  # Multiply arguments
  # Return product

# Inputs: string
# Outputs: string, numeric

# Data structures:
  # string: input
  # integer: output

# Algorithm
  # START
  # SET arg1 argument _2
  # IF argument_valid?
    # RETURN product
  # ELSE
    # PRINT error
  # END
  # END

def is_valid? argument
  argument.to_s.to_i == argument
end

def product arg1, arg2
  if is_valid?(arg1) && is_valid?(arg2)
    arg1 * arg2
  else
    puts "Invalid argument"
  end
end

p product(2, 3) == 6


