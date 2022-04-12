# Write a method that takes a number as an argument. If the
# argument is a positive number, return the negative of that
# number. If the number is zero or negative, return the original number.

negative(5) == -5
negative(-3) == -3
negative(0) == 0










def negative(num)
  num > 0 ? -num : num
end

# LS solution:

def negative(number)
  -number.abs #.abs converts num to absolute value, then we make it negative
end