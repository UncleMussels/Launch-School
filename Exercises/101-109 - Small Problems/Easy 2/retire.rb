# Build a program that displays when the user will retire and how many years she has to
# work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# Inputs: string
# outpus: string

# data structures:
  # string: input + output
  # integer: input to age, retirement age, retirement year, years to go
  # Time: find current year

# Logical layer:
  # Prompt user for age
    # Store variable
    # Convert to integer
  # Prompt user for retirement age
    # Store variable
    # Convert to integer
  # Store current year variable
  # Calculate retirement year
    # Store variable
  # Calculate years to retirement
    # Store variable
  # Print string of current year, retirement year, years to retirement

  puts "=> How old are you? "
  age = gets.chomp.to_i

  puts "=> How old would you like to be when you retire?"
  retirement_age = gets.chomp.to_i

  current_year = Time.now.year
  retirement_year = current_year + (retirement_age - age)
  years_to_retire = retirement_year - current_year

  puts "Only #{years_to_retire} more years until you can retire in #{retirement_year}!"

