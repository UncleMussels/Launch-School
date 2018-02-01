# Write a program that reads the content of a text file and then prints the 
# longest sentence in the file based on number of words. Sentences may end
# with periods (.), exclamation points (!), or question marks (?). Any
# sequence of characters that are not spaces or sentence-ending characters
# should be treated as a word. You should also print the number of words in
# the longest sentence.

# Longes sentence:

text = File.read('gettysburg_address.txt')

sentences = text.split(/[.!?]/)
sentences.sort_by! { |sentence| sentence.split.size}
longest_sentence = sentences.last
puts "#{longest_sentence}"


# Further Exploration
  # Longest paragraph:

paragraphs = text.split(/\n\n/)
paragraphs.sort_by! { |paragraph| paragraph.split.size}
longest_paragraph = paragraphs.last
puts "#{longest_paragraph}"