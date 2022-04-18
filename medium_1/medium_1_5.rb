# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

def diamond(num)
  1.upto(num / 2 + 1) do |row|
    stars = row + (row - 1)
    puts ('*' * stars).center(num)
  end
  (num / 2).downto(1) do |row|
    stars = row + (row - 1)
    puts ('*' * stars).center(num)
  end
end

diamond(9)
diamond(33)
