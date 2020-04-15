def summation(n)
  sum = 0
  for val in 1..n do
    sum += yield(val)
  end
  sum
end

puts summation(3) { |val| val * 2 } 