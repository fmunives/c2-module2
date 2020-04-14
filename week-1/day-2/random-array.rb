def random_select(array, n)
  result = []
  n.times do
    result << array[rand(array.length)]
  end
  result.each { |x| puts x}
end

random_select([1,2,3,4,5],2)
