# The time of day can be represented as the number of minutes before or after midnight. If
# the number of minutes is positive, the time  is after midnight. If the number of minutes is
# negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day
# in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Understand the problem:
  # pass integer to method
  # mins_after_midnight = int % 1400
  # hour, minute = integer.divmod(60)

MINUTES_PER_DAY = 1440

def time_of_day integer
  mins_after_midnight = integer % MINUTES_PER_DAY
  hours, minutes = mins_after_midnight.divmod(60)
  format('%02d:%02d', hours, minutes)
end

p time_of_day 0
p time_of_day -3
p time_of_day 35
p time_of_day -1437
p time_of_day 3000
p time_of_day 800
p time_of_day -4231




