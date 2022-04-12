# Write a method that returns an Array that contains
# every other element of an Array that is passed in
# as an argument. The values in the returned list should
# be those values that are in the 1st, 3rd, 5th, and so
# on elements of the argument Array.  Solve this in 3 ways.

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []









# Solution 1: .each_with_index

def oddities (arr)
  odd_arr = []
  arr.each_with_index do |element, index|
    odd_arr << element if index.even?
  end
  odd_arr
end



# Solution 2: Loop incrementing by 2

def oddities (arr)
  odd_arr = []
  index = 0
  while index < arr.size
    odd_arr << arr[index]
    index += 2
  end
  odd_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Solution 3: .select

def oddities (arr)
  odd_arr = arr.select { |ele| arr.index(ele).even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

