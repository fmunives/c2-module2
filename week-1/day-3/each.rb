def each(arr)
  for element in 0..arr.length-1 do
    yield(arr[element])
  end
end

test_array = [2, 3, 4, 5]
each(test_array) { |element| puts "Number is #{element}"}