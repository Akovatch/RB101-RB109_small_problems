# Write a method that returns a list of all substrings of a string
# that start at the beginning of the original string. The return
# value should be arranged in order from shortest to longest substring.

def leading_substrings(str)
  results = []
  str_total = ''
  str.chars.each do |char|
    results << str_total += char
  end

  results
end

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# LS solution using .upto and (0..index) range

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end