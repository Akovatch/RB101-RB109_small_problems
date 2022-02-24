# Write a method named include? that takes an Array and a search value
# as arguments. This method should return true if the search value is
# in the array, false if it is not. You may not use the
# Array#include? method in your solution.

def include? (arr, value)
  arr.any? do |element|
    element == value
  end
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# LS solutions:

def include?(array, value)
  !!array.find_index(value) # !! forces the block to return a boolean
end

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

# can also use .find?