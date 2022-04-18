# Write a method that takes a sentence string as input, and returns the
# same string with any sequence of the words 'zero', 'one', 'two',
# 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted
# to a string of digits.

# Example:

# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

CONVERT_TO_DIGIT = { 'one' => '1',
                    'two' => '2',
                    'three' => '3',
                    'four' => '4',
                    'five' => '5',
                    'six' => '6',
                    'seven' => '7',
                    'eight' => '8',
                    'nine' => '9' }

def word_to_digit(str)
  words = str.split(' ')
  punctuation = ''
  words.map! do |word|
    if CONVERT_TO_DIGIT.keys.include?(word)
      word = CONVERT_TO_DIGIT[word]
    elsif word[-1] =~ /[^A-Za-z]/
      punctuation = word[-1]
      word = word[0..-2]
      word = CONVERT_TO_DIGIT[word] if CONVERT_TO_DIGIT.keys.include?(word)
      word + punctuation
    else
      word
    end
  end
  words.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# My alternative solution using \b to convert the sentence into full words, separated from their punctuation and spaces.

CONVERT_TO_DIGIT = { 'one' => '1',
'two' => '2',
'three' => '3',
'four' => '4',
'five' => '5',
'six' => '6',
'seven' => '7',
'eight' => '8',
'nine' => '9' }

def word_to_digit(str)
  words = str.split(/\b/) # conversion of sentence into an array of full words, spaces, and punctuation.
  words.map! do |word|
    if CONVERT_TO_DIGIT.keys.include?(word)
      word = CONVERT_TO_DIGIT[word]
    else
      word
    end
  end
  words.join
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# LS solution: using regex and gsub!

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

# \b tags means that ruby will only search for full words, not sub-strings

# Solution from a student: By using the \b regex to split the sentence into a word array
# the array included the words split from their punctuation. This words array could then
# be fed into the map method and
# ["Please", " ", "call", " ", "me", " ", "at", " ", "five", " ", "five", "
# ", "five", " ", "one", " ", "two", " ", "three", " ", "four", ". ", "Thanks", "."]
# They also arrange their numers_array array so that each word can be easily
# converted to its index number.



































def word_to_digit(input_string)
  numbers_arr = %w(zero one two three four five six seven eight nine)
  words_arr = input_string.split(/\b/)

  sentence = words_arr.map do |word|
    numbers_arr.include?(word) ? numbers_arr.index(word) : word
  end.join('')
  sentence
end