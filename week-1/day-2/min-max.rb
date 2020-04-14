numbers = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]
min_number = 0
max_number = 0

def min numbers
  ordered_numers = numbers.sort
  ordered_numers[0]
end

def max numbers
  ordered_numers = numbers.sort
  ordered_numers[ordered_numers.length-1] 
end

min_number = min numbers
max_number = max numbers

puts "min: #{min_number}, max: #{max_number}"