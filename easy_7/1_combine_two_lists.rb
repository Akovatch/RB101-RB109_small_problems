# Write a method that combines two Arrays passed in as arguments,
# and returns a new Array that contains all elements from both Array
# arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that
# they have the same number of elements.

# Ex. interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

def interleave(arr1, arr2)
  counter = 0
  results = []
  while counter < arr1.size
    results << arr1[counter]
    results << arr2[counter]
    counter += 1
  end
  results
end

# LS solution: using .each_with_index

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

