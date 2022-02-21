# Create a method that takes two arguments,
# multiplies them together, and returns the result.

def multiply (num1, num2)
  num1 * num2
end

multiply(5, 3) == 15 # => true

# For fun: what happens if the first argument is an Array?
# What do you think is happening here?

multiply([1, 2, 3], 2) # => [1, 2, 3, 1, 2, 3]

# it adds the array values back into the array the specified
# number of times.