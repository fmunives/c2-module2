def map(array)
  if block_given?
    array.map { |value| yield(value) }
  else
    array
  end
end

p arr = [1, 2, 3]
map(arr) { |el| el * 2 }# Returns [2, 4, 6]

# With no block
p new_arr = map(arr) { |el| el * 2 }
p arr.equal?(new_arr) 