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

# input: integer
# output: integer (next greatest featured number)
# rules:
  # odd, mult of 7, and unique digits
  # return next featured number
  # return error message if there is no featured number !!!
# alg:
  # 1.upto(7) get next odd multiple of 7
  # count up from input (1.upto(1_023_456_987)
  #  unique digits (digits == digits.uniq)
    # increment number up by 14

def featured(num)
  starting_num = 0
  1.upto(14) do |n|
    starting_num = (num + n) if (num + n) % 7 == 0 && (num + n).odd?
  end
  while starting_num <= 1_023_456_987
    return starting_num if starting_num.digits == starting_num.digits.uniq
    starting_num += 14
  end
  'There is no possible number that fulfills those requirements'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# # My original solution broke the terminal after 900 :(

# # #LS solution:

#   def featured(number)
#     number += 1
#     number += 1 until number.odd? && number % 7 == 0

#     loop do
#       number_chars = number.to_s.split('')
#       return number if number_chars.uniq == number_chars
#       number += 14
#       break if number >= 9_876_543_210
#     end

#     'There is no possible number that fulfills those requirements.'
#   end