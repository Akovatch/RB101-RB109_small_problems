# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate
# again to 321759. Keep the first 3 digits fixed in place and rotate again
# to get 321597. Finally, keep the first 4 digits fixed in place and rotate
# the final 2 digits to get 321579. The resulting number is called the maximum
# rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# Example:
# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

def max_rotation(num)
  counter = num.to_s.length
  loop do
    break if counter == 1
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
  end
  num
end

def rotate_rightmost_digits(num, n)
  num = num.to_s.chars
  num[-n..-1] = rotate_array(num[-n..-1])
  num.join.to_i
end

def rotate_array(array)
  array[1..-1] << array[0]
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845


# LS solution: using downto looping mechanism

# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#     number = rotate_rightmost_digits(number, n)
#   end
#   number
# end
