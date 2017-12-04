# Build a program that asks a user for the length and width of a room in meters and then
#  displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

# Understand the problem:
  # Prompt user for length of room
  # Prompt user for width of room
  # Convert width + length to floats
  # Find square meters of room using length x width
  # Convert square meters to square feet
  # Print square meters + square feet

# Questions
  # Round return value of sq feet to float with 2 decimals?
  # Round return value of sq meters to float with 1 decimal?
  # Use floats for meter inputs?

# Inputs: floats
# Outputs: string

# Data Structures
  # Floats for inputs + finding squared values
  # String for output

# Logical syntax
  # START 
  # GET room length
  # SET room_length.to_f
  # GET room width
  # SET room_width.to_f
  # SET square_meters = length * width
  # SET square_feet =  square_meters * 10.7639
  # PRINT square_meters + square_feet
  # END

SQ_METERS_TO_SQ_FEET = 10.7639

puts "Enter the length of the room in meters:"
room_length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
room_width = gets.chomp.to_f

square_meters = sprintf("%.1f", room_length * room_width)
square_feet = sprintf("%.2f", square_meters.to_f * SQ_METERS_TO_SQ_FEET)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."


