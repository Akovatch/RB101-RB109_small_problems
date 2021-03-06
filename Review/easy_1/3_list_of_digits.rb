# Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

puts digit_list(12345) == [1, 2, 3, 4, 5]     #=> true
puts digit_list(7) == [7]                     #=> true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] #=> true
puts digit_list(444) == [4, 4, 4]             #=> true





def digit_list(num)
  arr = num.to_s.chars
  arr.map { |char| char.to_i}
end

# LS solutions:

# Brute force

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

# Idiomatic Ruby
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end