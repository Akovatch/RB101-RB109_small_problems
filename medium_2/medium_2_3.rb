# Lettercase Percentage Ratio

# In the easy exercises, we worked on a problem where we had to count the number
# of uppercase and lowercase characters, as well as characters that were neither
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Examples

# letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }









































# My solution: Pass string through letter_case_count method, get a sum of the values, and then
# use map to turn the values of the hash into percentages (note the required brackets in the map block)

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_percentages(str)
  results = letter_case_count(str)
  total_chars = results.values.sum.to_f
  results.map { |key, value| [key, (value /= total_chars) * 100] }.to_h
end

def letter_case_count (str)
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

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# LS solution:

def letter_percentages(string)
  counts = {}
  percentages = {}
  characters = string.chars
  length = string.length

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end