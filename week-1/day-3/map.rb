def map(arr)
  new_array = []
  arr.each { |element| new_array << yield(element)  }
  new_array
end

test_array = [2, 3, 4, 5]
puts map(test_array) { |element| element * 3}