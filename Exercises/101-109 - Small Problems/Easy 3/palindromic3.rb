# Write a method that returns true if its integer argument is palindromic, false otherwise.
# A palindromic number reads the same forwards and backwards.

def palindronumber? integer
  integer.to_s.reverse == integer.to_s
end

palindronumber? 13431
