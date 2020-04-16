def summation(n)
  sum = 0
  # for val in 1..n do
  #   sum += yield(val)
  # end
  (1..n).each { |val| sum += yield(val) }
  sum
end

puts summation(3) { |val| val * 2 } 