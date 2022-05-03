# Merge Sorted Lists

# Write a method that takes two sorted Arrays as arguments, and returns a
# new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array.
# You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# Examples:

# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]

# input: two sorted arrays
# output: one sorted array
# rules:
  # do not mutate either input array
  # all sorting methods are prohibited
  # input arrays can be empty
# algorithm:
  # results assigned to array1 duplicated
  # iterate over array2 - for each element (element2)
    # iterate over array1 (element1)
      # if element2 is less than element1, insert element2 before the same element's index in results (#insert)
  # return results

def merge(array1, array2)
  return array2 if array1 == []
  results = array1.dup
  array2.each do |element2|
    array1.each do |element1|
      if element2 < element1
        results.insert(results.index(element1), element2)
        break
      end
    end
  end
  results
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
