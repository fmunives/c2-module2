class Square
  def initialize(length)
    @length = length
  end
  def area
    return @length*@length
  end
end

square_one = Square.new(10)
puts square_one.area # Logs: 100