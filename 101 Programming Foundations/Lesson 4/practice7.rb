# Create a hash that expresses the frequency with which each letter occurs in the following string:
# Ex: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"
char_count = {}

statement.each_char do |char|
  char_count[char] = statement.count(char)
end

puts char_count