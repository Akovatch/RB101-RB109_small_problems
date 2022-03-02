# Write a method that takes a string, and returns a new string
# in which every character is doubled.

def repeater(str)
  result = []
  str.chars.each { |char| result << char * 2 }
  result.join
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''