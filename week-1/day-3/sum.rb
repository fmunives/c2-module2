def sum(*numbers)
  sum = 0
  numbers.each { |x| sum += x }
  sum
end

puts sum(1,2,32,43,23,2)