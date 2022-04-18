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

# input: single word string
# output: boolean
# rules:
  # case-insensitive
  # each 'block' can only be used once
# alg:
  # create an array of blocks
  # iterate through blocks
    # find count of block occurrence in word
    # if count is greater than 1, return false
  # return true otherwise


BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  BLOCKS.each do |block|
   return false if word.upcase.count(block) > 1
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# LS solution: uses the none? method (opposite of all?), and count method.
# Passes the blocks as two-character words into the count method as an
# argument. If count method says on of the words matches more than once,
# none? returns false.

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end




