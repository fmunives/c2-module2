def non_duplicated_values(values)
  unique_values = []
  unique_values << values.select { |value| values.count(value) == 1  }
end

puts non_duplicated_values([1,2,2,3,3,4,5])