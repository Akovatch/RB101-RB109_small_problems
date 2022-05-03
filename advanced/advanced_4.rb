# Transpose MxN

# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix
# as represented by a ruby Array of Arrays.

# Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices.
# Any matrix can be transposed by simply switching columns with rows.

# Modify your transpose method from the previous exercise so it works with any
# matrix with at least 1 row and 1 column.

# input: array of arrays
# output: transposed array of arrays
# rules:
  # should work with a matrix of one column and one row
# algorithm:
  # init results array
  # interate from 0 to array[0] length (index) - for each sub-array:
    # row = []
    # iterate over sub_arrays - for each element
      # push all elements at index into row array
    # push row into results

def transpose(array)
  results = []
  (0...array[0].length).each do |index|
    row = []
    array.each { |sub_array| row << sub_array[index] }
    results << row
  end
  results
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

