# Write a method that takes two arguments, a positive integer and a boolean, and calculates 
# the bonus for a given salary. If the boolean is true, the bonus should be half of the salary.
# If the boolean is false, the bonus should be 0.

# Understand the problem:
  # MEthod takes two arguments, pos int and boolean
  # If boolean is true, return integer/2
  # Else return 0

# Questions:
  # Can bonus value be a float?

# Inputs: integer, boolean
# Outputs: float

# Data Structures
  # Integer and boolean for inputs
  # Float for output
  # Boolean to verify bonus

# Logical flow:
  # START
  # GET integer, boolean
  # IF boolean == true
    # RETURN integer / 2.0
  # ELSE 
    # RETURN 0
  # END
  # END

def bonus integer, boolean
  boolean == true ? (integer / 2.0) : 0
end

puts bonus(1500, true) == 750.0
puts bonus(1501, true) == 750.5
puts bonus(1500, false) == 0





