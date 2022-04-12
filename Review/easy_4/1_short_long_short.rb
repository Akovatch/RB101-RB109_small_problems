# Write a method that takes two strings as arguments,
# determines the longest of the two strings, and then
# returns the result of concatenating the shorter string,
# the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"







def short_long_short(str1, str2)
  if str1.length > str2.length
    puts str2 + str1 + str2
  elsif str2.length > str1.length
    puts str1 + str2 + str1
  end
end

# LS solution: put the strings in an array and sort

def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end