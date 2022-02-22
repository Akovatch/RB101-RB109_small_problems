# In the previous exercise, you developed a method that
# converts non-negative numbers to strings. In this exercise,
#  you're going to extend that method by adding the ability
#  to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a
#  string representation.

# You may not use any of the standard conversion methods
# available in Ruby, such as Integer#to_s, String(),
# Kernel#format, etc. You may, however, use integer_to_string
#  from the previous exercise.

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  string_array = integer.digits.map { |ele| DIGITS[ele] }
  string_array.reverse.join
end

def signed_integer_to_string (num)
  if num.positive?
    '+' + integer_to_string(num)
  elsif num.negative?
    '-' + integer_to_string(-num)
  else
    '0'
  end
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

# LS solution: using <=> and a case

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end


