# Write a method that takes a positive integer, n, as an argument,
# and displays a right triangle whose sides each have n stars.
# The hypotenuse of the triangle (the diagonal side in the images
# below) should have one end at the lower-left of the triangle,
# and the other end at the upper-right.

# Example:

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********









def triangle (num)
  counter = 1

  while counter <= num
  puts (" " * (num - counter)) + ("*" * counter)
  counter += 1
  end
end

# LS solution:

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
