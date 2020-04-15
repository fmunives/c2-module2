def count_duplicates(numbers)
  numbers.length - numbers.uniq.length
end

puts count_duplicates([1, 2, 3, 2, 5, 8, 5, 10, 5])