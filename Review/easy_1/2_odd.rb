# Write a method that takes one integer argument,
# which may be positive, negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.

puts is_odd?(5)        #=> true
puts is_odd?(-10)      #=> true
puts is_odd?(0)        #=> true
puts is_odd?(10456)    #=> true





def is_odd?(num)
  if num == 0
    false
  else
    num % 2 != 0
  end
end


# LS answer:

def is_odd?(number)
  number % 2 == 1
end