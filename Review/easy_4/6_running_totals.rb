# Write a method that takes an Array of numbers,
# and returns an Array with the same number of elements,
# and each element has the running total
# from the original Array.

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []









def running_total(arr)
  index = 0
  sum = 0
  running_total_arr = []
  while index < arr.length
    running_total_arr << (sum += arr[index])
    index += 1
  end
  running_total_arr
end


# LS solution using .map

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

# Further Exploration
# Try solving this problem using Enumerable#each_with_object
# or Enumerable#inject (note that Enumerable methods can
# be applied to Arrays).

def running_total(arr)
  total = 0
  total_arr = arr.inject([]) do |array, value|
    array << total += value
  end
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []


