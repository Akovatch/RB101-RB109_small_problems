# Seeing Stars

# Write a method that displays an 8-pointed star in an nxn grid,
# where n is an odd integer that is supplied as an argument to the method.
# The smallest such star you need to handle is a 7x7 grid.

# input: odd integer >= 7
# output: star
# algorithm:
  # loop up using formula below in notes
    # when n - n break
  # output n stars centered
  # loop down from n to 3, same formula

def star(grid_size)
  3.upto(grid_size) do |num|
    next if num.even?
    spaces =  ' ' * ((grid_size - num) / 2)
    string = '*' + spaces + '*' + spaces + '*'
    puts string.center(grid_size)
  end
  puts '*' * grid_size
  grid_size.downto(3) do |num|
    next if num.even?
    spaces =  ' ' * ((grid_size - num) / 2)
    string = '*' + spaces + '*' + spaces + '*'
    puts string.center(grid_size)
  end
end

star(23)

# LS solution: spaces are equal to distance from center - 1. Also used a helper method.

def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

# Notes:

# *--*--* # 3 stars separated by two spaces, centered
# -*-*-*- # 3 stars separated by one space, centered
# --***-- # 3 stars centered
# ******* # every index
# --***--
# -*-*-*-
# *--*--*

# star(9)

# *   *   * # 3 stars separated by three spaces centered. (9 - 3) / 2 spaces between stars, centered
#  *  *  *  # 3 stars separated by two spaces, centered. 9 - 5 / 2 spaces between stars, centered
#   * * *   # 3 stars separated by one space, centered 9 - 7 / 2 spaces between stars
#    ***    # 3 stars centered, 9 - 9 spaces between stars, centered
# ********* # every index
#    ***    # reverse pattern
#   * * *
#  *  *  *
# *   *   *

# generalizing:
  # n - 3 / 2 spaces between stars, centered
  # n - 5 / 2 spaces between stars, centered
  # n - 7 / 2 spaces between stars, centered (break when its n - n)
  # n stars centered
  # same, but downto