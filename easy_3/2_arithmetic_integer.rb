# Write a program that prompts the user for two positive
# integers, and then prints the results of the following
# operations on those two numbers: addition, subtraction,
# product, quotient, remainder, and power. Do not worry
# about validating the input.

puts "==> Enter the first number:"
num1 = gets.chomp.to_i

puts "==> Enter the second number:"
num2 = gets.chomp.to_i

puts "==> #{num1} + #{num2} = #{num1 + num2}"
puts "==> #{num1} - #{num2} = #{num1 - num2}"
puts "==> #{num1} * #{num2} = #{num1 * num2}"
puts "==> #{num1} / #{num2} = #{num1 / num2}"
puts "==> #{num1} % #{num2} = #{num1 % num2}"
puts "==> #{num1} ** #{num2} = #{num1 ** num2}"

# note that this assignment doesn't ask you to address edge cases.
# or to validate input.
# For example, 0 as an input would throw an error.

# Here is a more concise solution:

OPERATORS = %w(+ - * / % **)
nums = []

puts "==> Enter the first number:"
nums << gets.to_i
puts "==> Enter the second number:"
nums << gets.to_i

OPERATORS.each do |x|
  puts "==> #{nums[0]} #{x} #{nums[1]} = #{nums.inject(x)}"
end