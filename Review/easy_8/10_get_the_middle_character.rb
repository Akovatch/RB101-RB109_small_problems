# Write a method that takes a non-empty string argument,
# and returns the middle character or characters of the
# argument. If the argument has an odd length, you should
# return exactly one character. If the argument has an even
# length, you should return exactly two characters.

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'









def center_of(str)
  if str.length.odd?
    str[str.length / 2]
  else
    str[(str.length / 2 - 1), 2]
  end
end

# LS solution: essentially the same, but uses a 'center_index' variable for clarity

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end
