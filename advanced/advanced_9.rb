# Egyptian Fractions

# A Rational Number is any number that can be represented as the result
# of the division between two integers, e.g., 1/3, 3/2, 22/7, etc. The
# number to the left is called the numerator, and the number to the right
# is called the denominator.

# A Unit Fraction is a rational number where the numerator is 1.

# An Egyptian Fraction is the sum of a series of distinct unit fractions
# (no two are the same), such as:

# 1   1    1    1
# - + - + -- + --
# 2   3   13   15

# Every positive rational number can be written as an Egyptian fraction.

# For example:

#     1   1   1   1
# 2 = - + - + - + -
#     1   2   3   6

# Write two methods: one that takes a Rational number as an argument,
# and returns an Array of the denominators that are part of an Egyptian
# Fraction representation of the number, and another that takes an Array
# of numbers in the same format, and calculates the resulting Rational number.

# You will need to use the Rational class provided by Ruby.

# Examples:

# egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

# Every rational number can be expressed as an Egyptian Fraction.
# In fact, every rational number can be expressed as an Egyptian
# Fraction in an infinite number of different ways. Thus, the first
# group of examples may not show the same values as your solution.
# They do, however, show the expected form of the solution. The
# remaining examples merely demonstrate that the output of egyptian
# can be reversed by unegyptian.

# For more info on Egyptian Fractions, see this page.

# You will need to read about the Rational class. This is part of ruby's core library.

# Note that the techniques for calculating Egyptian Fractions shown on the Wikipedia page may
# not be the easiest to understand or implement -- the methods described there are generally
# meant to arrive at a solution as quickly as possible or to arrive at a specific solution
# (such as the shortest solution). Feel free to use a simpler method: check whether 1 / 1 can
# be part of the solution, then 1 / 2, then 1 / 3, then 1 / 4, and so on. This is relatively
# easy to implement compared to some other techniques.

# For egyptian method:
# input: rational number (Rational(3, 1))
# output: array of denominators
# algorithm:
  # denominators
  # rational = rational num
  # sum = 0
  # starting_num = 1.0
  # loop
    # break when sum of fractions == num
    # startin_num gets added to sum if sum + 1.0 / starting_num <= num
    # starting num gets added to denominators array
    # starting_num += 1

# For unegyptian method:
# input: array of denominators
# output: rational (float)
# algorithm:
  # sum = 0
  # iterate through array - for each number
    # add 1.0 / num to sum
  # return sum

# The key is using 'Rational(1, num)' rather than floats, as floats cause an infinite loop
# as these values are not precisely represented as floats

def unegyptian(denominators)
  sum = 0
  denominators.each do |num|
    sum += Rational(1, num)
  end
  sum
end

def egyptian(rational) # yay! it works!
  denominators = []
  sum = 0
  starting_num = 1
  loop do
    break if sum == rational
    if sum + Rational(1, starting_num) <= rational
      sum += Rational(1, starting_num)
      denominators << starting_num
    end
    starting_num += 1
  end
  denominators
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
