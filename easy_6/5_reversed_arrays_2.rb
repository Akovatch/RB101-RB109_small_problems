# Write a method that takes an Array, and returns a new Array
# with the elements of the original list in reverse order.
# Do not modify the original list.

# You may not use Array#reverse or Array#reverse!,
# nor may you use the method you wrote in the previous exercise.

def reverse(arr)
  counter = 1
  result = []
  loop do
    break if counter > arr.size
    result << arr[-counter]
    counter += 1
  end
  result
end

reverse([1, 2, 3, 4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

# LS solution using .reverse_each

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end