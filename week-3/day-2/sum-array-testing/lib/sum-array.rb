class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    sum = 0
    @array.each { |x| sum+= x }
    sum += initial_value
  end
end

# my_array = MyArray.new([1,2,3])
# puts my_array.sum()
