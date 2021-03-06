# Write another method that returns true if the string
# passed as an argument is a palindrome, false otherwise.
#  This time, however, your method should be case-insensitive,
#  and it should ignore all non-alphanumeric characters.
#  If you wish, you may simplify things by calling
#  the palindrome? method you wrote in the previous exercise.

def real_palindrome?(str)
  str1 = str.downcase.gsub(/[^0-9a-z]/, '') # ^ is a negated range
  str2 = str.downcase.gsub(/[^0-9a-z]/, '').reverse
  str1 == str2
end


# LS solution (using .delete)

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  string == string.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?("Madam, I'm Adam") == true
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false