# Write a method that will take a short line of text, and print it within a box.


print_in_box('To boldly go where no one has gone before.')

# =>
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+









def print_in_box (str)
  puts '+-' + ('-' * str.length)   + '-+'
  puts '| ' + (' ' * str.length) + ' |'
  puts '| ' + str + ' |'
  puts '| ' + (' ' * str.length) + ' |'
  puts '+-' + ('-' * str.length)   + '-+'
end



# LS solution - basically the same but they use variables and string interpolation

def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end