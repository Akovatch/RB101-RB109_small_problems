# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character
# of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'








def word_cap(str)
  str.split(' ').map { |word| word.capitalize}.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# LS solution: using .map shorthand

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end
