# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will
# remain in use for the foreseeable future.

def friday_13th(year)
  fridays = 0
  month = 1
  t = Time.new(year, month, 13)

  loop do 
    fridays +=1 if t.friday?
    month += 1
    month == 13 ? break : t = Time.new(year, month, 13)
  end

  fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2