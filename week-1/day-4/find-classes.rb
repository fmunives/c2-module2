class Laptop
  def initialize(brand, color)
    @brand = brand
    @color = color
    @new = true
  end

  def is_new
    puts  @new ? "It's a new laptop, Nice!" : "May be you need a new one"
  end
end

fredd_laptop = Laptop.new(:hp, :white)
fredd_laptop.is_new