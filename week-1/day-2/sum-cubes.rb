def sum_of_cubes(a, b)
  sum = 0
  until a > b
    sum += a ** 3
    a += 1
  end
  puts "The sum is #{sum}"
end

sum_of_cubes(1,3)