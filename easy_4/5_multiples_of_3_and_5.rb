# Write a method that searches for all multiples of 3 or 5
# that lie between 1 and some other number, and then computes
# the sum of those multiples. For instance, if the supplied
# number is 20, the result should be
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer
# greater than 1.

def multisum (integer)
  sum_arr = []
  (1..integer).each { |num| sum_arr << num if (num % 3 == 0 || num % 5 == 0) }
  sum_arr.sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# Further Exploration
# Investigate Enumerable.inject (also known as Enumerable.reduce),
# How might this method be useful in solving this problem?
# (Note that Enumerable methods are available when working with
# Arrays.) Try writing such a solution. Which is clearer?
# Which is more succinct?

def multisum (integer)
  sum_arr = []
  (1..integer).each { |num| sum_arr << num if (num % 3 == 0 || num % 5 == 0) }
  sum_arr.inject(:+)
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168