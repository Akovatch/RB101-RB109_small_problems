# Write a program that will ask a user for an input of a
# word or multiple words and give back the number of characters.
# Spaces should not be counted as a character.










puts "Please write word or multiple words:"
str = gets.chomp
num_of_chars = str.delete(" ").size

puts "There are #{num_of_chars} characters in #{str}"