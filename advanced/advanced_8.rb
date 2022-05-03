# Merge Sort

# Sort an array of passed in values using merge sort. You can assume that this
# array may contain only one type of data. And that data may be either all numbers or all strings.

# Merge sort is a recursive sorting algorithm that works by breaking down the
# array elements into nested sub-arrays, then recombining those nested sub-arrays
# in sorted order. It is best shown by example. For instance, let's merge sort the
# array [9,5,7,1]. Breaking this down into nested sub-arrays, we get:

# [9, 5, 7, 1] ->
# [[9, 5], [7, 1]] ->
# [[[9], [5]], [[7], [1]]]
# We then work our way back to a flat array by merging each pair of nested sub-arrays:

# [[[9], [5]], [[7], [1]]] ->
# [[5, 9], [1, 7]] ->
# [1, 5, 7, 9]

# input: an array
# output: a sorted array
# rules:
  # use merge sort process (recursion)
  # use merge method from last exercise as a helper method
  # array will contain either all strings or all numbers
# algorithm:
  # divide:
    # get middle index # (divide by 2)
    # get first half = call mergesort on slice from 0...mid
    # get second half = call merge sort on slice from mid..-1
  # merge:
    # call merge and pass in the two arrays

# Method is largely copied from this tutorial:
# https://medium.com/@allegranzia/merge-sort-in-ruby-102b750af287

def merge_sort(array)
  return array if array.size <= 1
  mid_index = array.size / 2
  first_half = merge_sort(array[0...mid_index])
  second_half = merge_sort(array[mid_index...array.size])
  merge(first_half, second_half)
end

def merge(array1, array2) # from previous exercise
  index2 = 0
  result = []
  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end
  result.concat(array2[index2..-1])
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
[1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
