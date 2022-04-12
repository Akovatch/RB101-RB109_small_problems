# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.






def get_num
  input = ''
  loop do
    puts '>> Please enter an integer greater than 0:'
    input = gets.chomp

    break if (input.to_i.to_s == input) && (input.to_i > 0)
    puts ">>Invalid input."
  end
  input.to_i
end

def get_operator
  input = ''
  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product."
    input = gets.chomp

    break if input == 's' || input == 'p'
    puts ">> Please enter a valid command"
  end
  input
end

num = get_num
operation = get_operator

if operation == 's'
  result = (1..num).sum
  operation = 'sum'
  puts "The #{operation} of the integers between 1 and #{num} is #{result}."
elsif operation == 'p'
  result = (1..num).inject(:*)
  operation = 'product'
  puts "The #{operation} of the integers between 1 and #{num} is #{result}."
end


