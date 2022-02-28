# Write a method that takes two Array arguments in which
# each Array contains a list of numbers, and returns a
# new Array that contains the product of every pair of
# numbers that can be formed between the elements of the
# two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(arr1, arr2)
  results = []
  arr1.each do |num1|
    arr2.each do |num2|
      results << num2 * num1
    end
  end

  results.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# LS super-compact solution using .product with a block:

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end