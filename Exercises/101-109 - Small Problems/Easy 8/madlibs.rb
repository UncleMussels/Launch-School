# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
# and an adjective and injects those into a story that you create.

def madlib(words)
  words = { noun: nil, verb: nil, adjective: nil, adverb: nil }
  
  words.each do |key, value|
    print "=> Choose your #{key}: "
    words[key] = gets.chomp
  end

  puts "Your #{words[:adjective]} #{words[:noun]} wants to #{words[:adverb]}" +
       " #{words[:verb]}. LOL."
end

madlib(words)