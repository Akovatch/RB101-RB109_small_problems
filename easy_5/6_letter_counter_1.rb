# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Solution not using tally

def word_sizes (str)
  result = Hash.new(0) # << this is important. If incrementing in a hash do this to set default entries to zero and avoid errors.
  word_lengths = str.split(' ').each do |word|
      result[word.length] += 1
  end
  result
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# The takeaway from this exercise is that adding values to a hash using += will
# throw an error unless you initialize the hash to Hash.new(0)

# Solution using tally:

def word_sizes (str)
  word_lengths = str.split(' ').map { |word| word.length }
  word_lengths.tally
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}


