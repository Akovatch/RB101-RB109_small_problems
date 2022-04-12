# Matching Parentheses?

# Write a method that takes a string as an argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# Note that balanced pairs must each start with a (, not a ).

# My solution: Each method iterates over each character, adding 1 to sum for '(' and subtracting for ').'
# The result is triggered to false if the sum goes below 0 (')' coming before '('), or if the sum is
# not equal to 0 after each method is done iterating (unbalanced). It worked!

def balanced?(str)
  str_arr = str.chars
  sum = 0
  result = true
  str_arr.each do |char|
    sum += 1 if char == '('
    sum -= 1 if char == ')'
    result = false if sum < 0
  end
  result = false if sum != 0
  result
  end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# LS solution: essentially the same logic as my solution, but uses zero? method

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end