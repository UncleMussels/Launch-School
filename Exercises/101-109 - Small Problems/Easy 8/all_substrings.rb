# Write a method that returns a list of all substrings of a string. The
# returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on. Since multiple
# substrings will occur at each position, the substrings at a given position 
# should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise

# Logical Syntax
  # pass string argument to method
  # iterate using upto
    # count = 0
    # pass string.slice(count..string.size -1) to substrings method
    # count +=1
  # end

# LS Solution:

# def substrings(string)
#   results = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(substrings_at_start(this_substring))
#   end
#   results
# end

def substrings(string)
  substring_arr = []
  count = 0

  until count == string.size do
    count.upto(string.size - 1) do |index|
      substring_arr << string.slice(count..index)
    end
    count += 1
  end

  substring_arr
end


p substrings('abcde')
