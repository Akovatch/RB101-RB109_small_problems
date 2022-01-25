# Write a method that takes one argument, a positive integer, 
# and returns the sum of its digits.

def sum(num)
  num_arr = []
  string_arr = num.to_s.chars
  string_arr.each do |string|
  num_arr.push(string.to_i)
  end
  num_arr.sum
end

puts sum(23) == 5               #=> true
puts sum(496) == 19             #=> true
puts sum(123_456_789) == 45     #=> true

#LS solution:

def sum(number)
  number.to_s.chars.reduce(:+)
end