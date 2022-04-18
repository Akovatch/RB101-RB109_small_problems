# Write a method that can rotate the last n digits of a number. For example:

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

def rotate_rightmost_digits(num, n)
  num = num.to_s.chars
  num[-n..-1] = rotate_array(num[-n..-1])
  num.join.to_i
end

def rotate_array(array)
  array[1..-1] << array[0]
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917







































def rotate_rightmost_digits(num, digits)
  num_arr = num.to_s.chars
  digits_to_rotate = num_arr.pop(digits)
  rotated_digits = rotate_array(digits_to_rotate)
  num_arr << rotated_digits
  num_arr.join.to_i
end

def rotate_array(array)
  array[1..-1] + array[0..0]
end
