# Print the even numbers from 1 to 99, inclusive. All numbers should be printed 
# on separate lines.

count = 1

loop do
  puts count if count.even?
  count += 1
  break if count == 99  
end