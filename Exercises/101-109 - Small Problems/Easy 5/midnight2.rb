# As seen in the previous exercise, the time of day can be represented as the number
# of minutes before or after midnight. If the number of minutes is positive, the time
# is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the
# number of minutes before and after midnight, respectively. Both methods should
# return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# understand the problem:
  # Pass hh:mm string to method
  # Separate + save string into hours and minutes variables
  # Find total minutes (60 * hours + mins)
    
    # After midnight method:
    # Return total minutes

    # Before midnight method
    # return total minutes - 1440 (mins in day constant)

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def before_midnight time
  total_mins(time) == 0 ? 0 : mins_before = MINUTES_PER_DAY - total_mins(time)
end

def after_midnight time
  total_mins(time) == 1440 ? 0 : mins_after = total_mins(time)
end

def total_mins time
  hours, minutes = time.split(':').map(&:to_i)
  total_mins = (hours * MINUTES_PER_HOUR) + minutes
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')




