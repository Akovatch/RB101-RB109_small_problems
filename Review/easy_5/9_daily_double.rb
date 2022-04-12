# Write a method that takes a string argument and returns a new string
# that contains the value of the original string with all consecutive
# duplicate characters collapsed into a single character. You may not
# use String#squeeze or String#squeeze!.

crunch('ddaaiillyy ddoouubbllee')
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''








def crunch (str)
  result = []
  str.chars.each do |char|
  result << char unless result.last == char
  end
  result.join
end
