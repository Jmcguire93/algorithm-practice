# Reverse Words

# Write a method reverse_words that takes in a sentence string and returns the sentence with the order of the characters 
# in each word reversed. Note that we need to reverse the order of characters in the words, 
# do not reverse the order of words in the sentence.

def reverse_words(sent)
  words = sent.split(" ")
  new_words = []
  words.each { |word| new_words << word.reverse } 
  return new_words.join(" ")
end

p reverse_words('keep coding') # => 'peek gnidoc'
p reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'