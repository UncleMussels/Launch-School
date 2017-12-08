# Write a method that will take a short line of text, and print it within a box.

# Example:

#  print_in_box('To boldly go where no one has gone before.')
#  +--------------------------------------------+
#  |                                            |
#  | To boldly go where no one has gone before. |
#  |                                            |
#  +--------------------------------------------+


# Understand the problem:
  # Pass line of text to method
  # Find string length, set as variable
  # Print +---+ with width of string + 2 on left and right
  # Print | | with width of string + 2
  # Print | string |
  # Print | | with width of string + 2
  # Print +---+ with width of string + 2 on left and right

MAX_WIDTH = 76

def whats_in_the_box string
  string = truncate(string)

  width = string.length + 2
  ends  = "+#{''.center(width, '-')}+"
  sides = "|#{''.center(width, ' ')}|"

  puts ends
  puts sides
  puts "| #{string} |"
  puts sides
  puts ends
end

def truncate string
  string = string[0..75] if string.size > MAX_WIDTH
  string
end

whats_in_the_box 'ok'
whats_in_the_box ''
whats_in_the_box ((0..75).to_a.join)
whats_in_the_box ((0..100).to_a.join)





