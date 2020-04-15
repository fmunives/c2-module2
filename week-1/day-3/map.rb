def map(arr)
  new_array = []
  for element in 0..arr.length-1 do
    new_array << yield(arr[element])
  end
  new_array
end

test_array = [2, 3, 4, 5]
puts map(test_array) { |element| element * 3}