# Given the following array, write a program that prints out
# groups of words that are anagrams. Anagrams are words that
# have the same exact letters in them but in a different order.
# Your output should look something like this:

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Output:
# ["demo", "dome", "mode"]
# ["none", "neon"]
# ["tied", "diet", "edit", "tide"]
# ["evil", "live", "veil", "vile"]
# ["fowl", "wolf", "flow"]

result = {}

words.each do |word|
  key = word.chars.sort.join
  if result.has_key?(key)
    result[key] << word
  else
    result[key] = [word]
  end
end

result.each_value do |value|
  p value
end