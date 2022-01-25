# Write a method that counts the number of occurrences of
# each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  uniq_arr = arr.uniq
  index = 0
  loop do
    if index < uniq_arr.length
      occurrence = arr.count(uniq_arr[index])
      puts "#{uniq_arr[index]} => #{occurrence}"
      index += 1
    else 
      break
    end
  end 
end

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

puts count_occurrences(vehicles)

# LS soultion: 
# creates an empty hash and uses .each to generate 
# key/value pairs for the hash

def count_occurrences(array)
    occurrences = {}
  
    array.uniq.each do |element|
      occurrences[element] = array.count(element)
    end
  
    occurrences.each do |element, count|
      puts "#{element} => #{count}"
    end
  end

  # Extra-succinct:

  def count_occurrences(arr)
    arr.uniq.each { |word| puts "#{word} => #{arr.count(word)}" }
  end