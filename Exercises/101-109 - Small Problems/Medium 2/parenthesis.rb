# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# LS Solution:
  # def balanced?(string)
  #   parens = 0
  #   string.each_char do |char|
  #     parens += 1 if char == '('
  #     parens -= 1 if char == ')'
  #     break if parens < 0
  #   end

  #   parens.zero?
  # end

def balanced?(string)
  parens_order = []
  string.chars.each do |char|
    parens_order << char if ['(', ')'].include?(char)
    return false if parens_order.count(")") > parens_order.count("(")
  end

  parens_order.count("(") != parens_order.count(")") ? false : true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false




