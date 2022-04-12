# A collection of spelling blocks has two letters per block,
# as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those
# words that do not use both letters from any given block.
# Each block can only be used once.

# Write a method that returns true if the word passed in as an argument
# can be spelled from this set of blocks, false otherwise.

# Examples:

# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# My solution: I turned the blocks into nested arrays. For each character of the word, I iterated through the blocks
# and the block that matched was added into a results array. At the end the expression results == results.uniq checked
# if any of the blocks were duplicated.

BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U' ],
['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(word)
  chars = word.upcase.chars
  results = []
  chars.each do |char|
    blocks.each do |block|
      results << block if block[0] == char || block[1] == char
    end
  end
  results == results.uniq
end

p block_word?('borat')

# LS solution: uses the none? method (opposite of all?), and count method.
# Passes the blocks as two-character words into the count method as an
# argument. If count method says on of the words matches more than once,
# none? returns false.

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end




