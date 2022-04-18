# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.




































def return_stars(num)
  '*' * num
end

def diamond(n)
  stars = 1
  row = ''
  loop do # top of the diamond to the center line
    puts return_stars(stars).center(n)
    break if stars == n
    stars += 2
  end
  loop do # line beneath center line to the bottom of the diamond
    stars -= 2
    puts return_stars(stars).center(n)
    break if stars == 1
  end
end

diamond(9)

# LS solution:

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center # critical calculation
  stars = '*' * number_of_stars
  puts stars.center(grid_size) # use of center method
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end