# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

def stringy(num)
  arr = []
  num.times do |index|
    index.even? ? arr.push(1) : arr.push(0)
  end
  arr.join
end

puts stringy(1) == '1'          #=> true
puts stringy(9) == '101010101'  #=> true
puts stringy(4) == '1010'       #=> true
puts stringy(7) == '1010101'    #=> true

# LS solution:

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end