# Write a program that will ask for user's name. The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Logical layer
  # Prompt user for name
    # Store variable
  # Print greeting
    # If name == 'name!'
      # Remove exclamation point from name
      # yell greeting in uppercase
    # Else 
      # normal greeting


# Inputs: string
# Outputs: string

# Data structures
  # string: input + output

print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.chop.upcase}. WHY ARE WE YELLING?"
else 
  puts "Hey #{name.capitalize}."
end




