# Write a method that takes one argument, a string,
# and returns a new string with the words in reverse order.






def reverse_words(string)
  string.split.reverse.join(" ")
end

puts reverse_words("Hello World")


