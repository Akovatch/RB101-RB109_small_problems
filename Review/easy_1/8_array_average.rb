# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers.
# Your result should also be an integer.

puts average([1, 6]) == 3                    #=> true
puts average([1, 5, 87, 45, 8, 8]) == 25     #=> true
puts average([9, 47, 23, 95, 16, 52]) == 40  #=> true






def average(array)
  array.sum / array.length
end


# LS solution:

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end