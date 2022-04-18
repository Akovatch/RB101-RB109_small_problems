# A featured number (something unique to this exercise) is an odd number that is a multiple of 7,
# and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is
# not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number
# that is greater than the argument. Return an error message if there is no next featured number.

# Examples:

# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

















































def featured(num)
  num += 1
  num += 1 until num.odd? && num % 7 == 0
  loop do
    return num if num.to_s.chars == num.to_s.chars.uniq
    num += 14
    break if num >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements.'
end

p featured(870)

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# My original solution broke the terminal after 900 :(

# #LS solution:

  def featured(number)
    number += 1
    number += 1 until number.odd? && number % 7 == 0

    loop do
      number_chars = number.to_s.split('')
      return number if number_chars.uniq == number_chars
      number += 14
      break if number >= 9_876_543_210
    end

    'There is no possible number that fulfills those requirements.'
  end