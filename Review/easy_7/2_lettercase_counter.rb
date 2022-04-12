# Write a method that takes a string, and then returns a hash that
# contains 3 entries: one represents the number of characters in
# the string that are lowercase letters, one the number of characters
# that are uppercase letters, and one the number of characters that are neither.

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }









LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(str)
  results = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |char|
    if LOWERCASE.include?(char)
      results[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      results[:uppercase] += 1
    else
      results[:neither] += 1
    end
  end

  results
end


