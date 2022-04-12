# Write a method that returns true if the string passed as an
# argument is a palindrome, false otherwise. A palindrome
# reads the same forward and backward. For this exercise,
# case matters as does punctuation and spaces.

p palindrome?('madam') == true
p palindrome?('Madam') == false
p palindrome?("madam i'm adam") == false
p palindrome?('356653') == true








def palindrome? (str)
  str == str.reverse
end

# Further Exploration 1
# Write a method that determines whether an array is
# palindromic; that is, the element values appear in
# the same sequence both forwards and backwards in the array.

def palindrome? (arr)
  arr == arr.reverse
end

p palindrome?([1, 2, 3, 4, 5]) == false
p palindrome?([1, 2, 3, 2, 1]) == true

# Further Exploration 2
# Now write a method that determines whether an array or a
# string is palindromic; that is, write a method that can
# take either an array or a string argument, and determines
# whether that argument is a palindrome. You may not use
# an if, unless, or case statement or modifier.

def palindrome? (input)
  input == input.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false
p palindrome?([1, 2, 3, 4, 5]) == false
p palindrome?([1, 2, 3, 2, 1]) == true