# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the number of characters in the string that are 
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

# PSEUDOCODE
  # Pass string arugment to method
  # create new hash 
  # break string into array of chars
  # array. each do
    # if char.upcase == char
      # << hash[upper]
    # elsif char.downcase == char
      # << hash[lower]
    # else
      # << hash[neither]
    # end
  # return hash


# LS Solution:

# def letter_case_count(string)
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   counts
# end


def case_counter(string)
  case_hash = { upper: 0, lower: 0, neither: 0 } 
  char_arr  = string.chars

  char_arr.each do |char|
    if ('A'..'Z').include?(char)
      case_hash[:upper] += 1
    elsif ('a'..'z').include?(char)
      case_hash[:lower] += 1
    else
      case_hash[:neither] += 1
    end 
  end

  case_hash
end

p case_counter('abCdef 123')



