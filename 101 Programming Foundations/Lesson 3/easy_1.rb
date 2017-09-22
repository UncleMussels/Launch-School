# Lesson 3 Practice Problems: Easy 1

a = "\n---------------------------------------------------------------------\n\n"

# Question 1

# What would you expect the code below to print out?

# numbers = [1, 2, 2, 3]
# numbers.uniq

#puts numbers

puts "Question 1: The code would print '1, 2, 2, 3' with each number on new line."
puts a

# Question 2

#Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it?
# put ! before something, like !user_name
# put ! after something, like words.uniq!
# put ? before something
# put ? after something
# put !! before something, like !!user_name

puts "Question 2: In Ruby, '?' is a naming convention used at the end " \
     "of methods as a way to indicate methods that should return a boolean " + 
     "value. Methods ending in '!' indicate a permanent or dangerous change."

question_2_list = <<-MSG
  - '!=' is a comparison operator than means 'not equivalent to'.
  - '!' before something, like !user_name, would mean 'not user_name'.
  - '!' after something, like words.uniq!, would perform a destructive action
  - '?' before something, like a character, will return that character in string format
  - '?' after something, like a method, is just a part of the method name.
  - '!!' before something, like !!user_name, is a double negative equivalent to user_name
MSG

puts "\n#{question_2_list}"
puts a

# Question 3

puts "Question 3: Replace the word 'important' with 'urgent' in this string:\n" \
     "=> Few things in life are as important as house training your pet dinosaur.\n" \
     "=> advice.gsub!('important', 'urgent')"
puts a

# Question 4

# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
numbers.delete(1)

puts "Question 4: Array#delete_at deletes and returns the object at the specified index, while " \
     "Array#delete deletes and returns all objects that match the specified value."
puts a

# Question 5

puts "Question 5: Programmatically determine if 42 lies between 10 and 100.\n" \
     "=> (10..100).include?(42)" 
puts a

# Question 6

puts "Question 6: Starting with the string 'famous_words = 'seven years ago...'', show two" \
     " different ways to put the expected 'Four score and ' in front of it.\n" \
     "=> famous_words.prepend('Four score and ') || famous_words.insert(0, 'Four score and ')"
puts a

# Question 7

puts "Question 7: If we take advantage of Ruby's Kernel#eval method to have it execute the " \
     "following string as if it were a 'recursive' method call, what would be the result?\n" \
     "=> 'how_deep = add_eight(add_eight(add_eight(add_eight(add_eight(number)))))'\n" \
     "=> eval(how_deep) = 42"
puts a

# Question 8

puts "Question 8: make the following into an unnested array\n" \
     "=> array = ['Fred', 'Wilma', ['Barney', 'Betty'], ['BamBam', 'Pebbles']]\n" \
     "=> array.flatten!"
puts a

# Question 9

puts "Question 9: Given the following hash, turn it into an array containing only two elements: " + 
     "Barney's name and Barney's number.\n" \
     "=> flintstones = { 'Fred' => 0, 'Wilma' => 1, 'Barney' => 2, 'Betty' => 3 }\n" \
     "=> flintstones.select { |k, v| k == 'Barney }.to_a.flatten"








