# Using the each method, write some code to output all of the vowels from the strings.

hsh = { first: ['the', 'quick'],
        second: ['brown', 'fox'],
        third: ['jumped'],
        fourth: ['over', 'the', 'lazy', 'dog']
}

vowels = %w(a e i o u y)

hsh.each do |key, value|
  value.each do |word|
    word.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
