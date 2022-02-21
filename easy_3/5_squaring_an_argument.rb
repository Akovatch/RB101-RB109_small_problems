# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument
# (the square is the result of multiplying a number by itself).

def multiply (num1, num2)
  num1 * num2
end

def square (num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

# What if we wanted to generalize this method to a
# "power to the n" type method: cubed, to the 4th power,
# to the 5th, etc. How would we go about doing so while
# still using the multiply method?

# I used a while loop and made one of the inputs to the
# multiply method the product.

def multiply (num1, num2)
  num1 * num2
end

def square (num, power)
  product = num
  while power >= 2
    product = multiply(product, num)
    power -= 1
  end
  product
end

p square(2, 3) == 8
p square(3, 4) == 81