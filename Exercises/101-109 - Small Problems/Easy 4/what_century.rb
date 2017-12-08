# Write a method that takes a year as input and returns the century. The return value should 
# be a string that begins with the century number, and ends with st, nd, rd, or th as 
# appropriate for that number.

# Understand the problem:
  # Pass a string number to the method
  # Set string to integer
  # If integer % 100 == 0
    # century = integer / 100
  # ELSE century = (integer / 100) + 1
  # Add century suffix from array
  # Return century value

# Inputs: string, integer for method
# Outputs: string

# Data structures
  # string: user input, return value of method
  # Integer: convert user input string to numeric
  # Array: store century suffixes

# Algorithm:
  # START
  # GET integer argument
  # SET suffix_hash = {'st' => 1, 'nd' => 2, 'rd' => 3, 'th' => [0, 4, 5, 6, 7, 8, 9 ] }
  # SET century = 0
  # IF year % 100 == 0
    # SET century = year / 100 . to_s
  # ELSE
    # SET century = (year / 100) + 1 . to_s
  # END
  # SET result = suffix(century)
  # END

def century year
  century = (year / 100) if year % 100 == 0
  century = (year / 100) + 1 if year % 100 != 0

  century.to_s + suffix(century.to_s)
end

def suffix century
  return 'th' if (century.to_i % 100).between?(11, 13)

  return 'st' if century[-1] == '1'
  return 'nd' if century[-1] == '2'
  return 'rd' if century[-1] == '3'
  return 'th'
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(1050)
