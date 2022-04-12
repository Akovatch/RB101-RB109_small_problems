# Write a method that takes an Array as an argument, and returns two
# Arrays (as a pair of nested Arrays) that contain the first half
# and second half of the original Array, respectively. If the original
# array contains an odd number of elements, the middle element should
# be placed in the first half Array.

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]








 def halvsies (arr)
  result = [[],[]]
  length = arr.size
  half, remainder = length.divmod(2)
  middle = half + remainder

  arr.each_with_index do |element, index|
    if index < middle
      result[0] << element
    else
      result[1] << element
    end
  end
  result
end

# LS solution: using a float 2.0, .ceil to round up, and .slice to return two new arrays from the original

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end