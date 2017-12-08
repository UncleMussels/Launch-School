# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly
# divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible 
# by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year
# greater than 0 as input, and returns true if the year is a leap year, or false if it is not
# a leap year.

# Understand the problem:
  # Pass positive integer to method
  # Evaluate if year is divisible by 4 & 400 or 100 % 400
  # Return boolean if conditions are met

# Algorithm
  # START
  # RETURN true if (year % 4 == 0) && (year %% 400 == 0)
  # RETURN FALSE

def leap_year? year
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

def other_leap_year? year
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
  end 
end

p leap_year? 400
p leap_year? 3000
p leap_year? 2004
p leap_year? 1
p leap_year? 100

p other_leap_year? 400
p other_leap_year? 3000
p other_leap_year? 2004
p other_leap_year? 1
p other_leap_year? 100


