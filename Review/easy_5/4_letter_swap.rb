# Given a string of words separated by spaces, write a method
#  that takes this string of words and returns a string in
#   which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter,
#  and that the string will always contain at least one word.
#   You may also assume that each string contains nothing
# but words and spaces

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'










def swap (str)
  str_arr = str.split(" ").map { |ele| swap_characters(ele) }
  str_arr.join(" ")
end

def swap_characters(word)
  return word if word.length == 1
  first_char = word[0]
  last_char = word[-1]
  middle_of_string = word.delete(word[0]).delete(word[-1])
  middle_of_string.prepend(last_char) + first_char
end

# LS solution: example of parallel assignment

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end