# The || operator returns a truthy value if either or both of its operands are truthy, a falsey
# value if both operands are falsey. The && operator returns a truthy value if both of its 
# operands are truthy, and a falsey value if either operand is falsey. This works great until 
# you need only one of two conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, and returns 
# true if exactly one of its arguments is truthy, false otherwise.

# Understand the problem
  # Method takes two arguments
  # Arguments must evaluate to booleans
  # If one boolean is true and one is false, return true
  # Else return false

# Inputs: boolean
# outputs: boolean

# data structures:
  # booleans: inputs, outputs, comparisons

# Algorithm:
  # START
  # SET arguments
  # IF (argument1 == true && argument2 == false) || (argument1 == false && argument2 == true)
    # RETURN true
  # ELSE
    # RETURN false
  # END
  #END

def xor? boolean1, boolean2
  (boolean1 && boolean2) ?  false : (boolean1 || boolean2)
  # or (boolean1 && !boolean2) || (!boolean1 && boolean2)
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)




