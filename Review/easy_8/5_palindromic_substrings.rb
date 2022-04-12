# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards as
# it does backwards. The return value should be arranged in the same sequence as the
# substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba"
# nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]









def leading_substrings(sub_str)
  results = []
  sub_str_total = ''
  sub_str.chars.each do |char|
    results << sub_str_total += char
  end
  results
end

def substrings(str)
  final_results = []
  counter = 0
  while counter < str.size
  final_results << leading_substrings(str[counter..-1])
  counter += 1
  end

  final_results.flatten
end

def palindromes(str)
  palindrome_results = []
  substrings(str).each do |sub_str|
    if sub_str == sub_str.reverse && sub_str.length > 1
      palindrome_results << sub_str
    end
  end
  palindrome_results
end

