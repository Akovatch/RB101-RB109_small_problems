# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(arr)
  dup_arr = arr.dup
  first = dup_arr.shift
  dup_arr.push(first)
  dup_arr
end

# Example:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# LS Solution: slicing everything out of the array except the first titem, which creates a new array
# sans the first item, and then adding the first element to it. Slice doesn't mutate, it creates
# a new array.

def rotate_array(array)
  array[1..-1] + [array[0]]
end