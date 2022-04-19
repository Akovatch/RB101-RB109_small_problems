# Write a method that computes the difference between the square of the sum of the
# first n positive integers and the sum of the squares of the first n positive integers.

# input: integer representing a sequence of nums starting at 1
# output: integer
# alg:
  # initialize both variables
  # calculate square of sums
    # iterate from 1 up to input
    # add them together (sum_of_square variable)
    # square the variable
  # calculate sum of squares
    # iterate from 1 up to input
    # square each one, add to variable
  # subtract the two variables

def sum_square_difference(num)
  square_of_sums = 0
  sum_of_squares = 0
  1.upto(num) { |n| square_of_sums += n }
  square_of_sums = square_of_sums ** 2
  1.upto(num) { |n| sum_of_squares += n ** 2}
  square_of_sums - sum_of_squares
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150


# #LS solution: both computations happened within the #upto loop. In my solution, I did them separately.

# def sum_square_difference(n)
#   sum = 0
#   sum_of_squares = 0

#   1.upto(n) do |value|
#     sum += value
#     sum_of_squares += value**2
#   end

#   sum**2 - sum_of_squares
# end