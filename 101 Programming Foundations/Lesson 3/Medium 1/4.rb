=begin
Question 4

Alyssa was asked to write an implementation of a rolling buffer. 
Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". 
Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?
=end

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Answer: Buffer method 1 mutates the object referenced by the buffer variable. Buffer method 2
# initializes the buffer variable inside of the method, requiring her to assign the return value of rolling_buffer2
# to a variable each time she calls the method in order to capture the additio of each new element.

buffer = %w(one two three)
max_buffer_size = 3

buffer = rolling_buffer2(buffer, max_buffer_size, "four")
puts buffer 










