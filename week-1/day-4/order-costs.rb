class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      puts total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
    end
  end
end

my_restaurante = Restaurant.new({:rice => 1, :noodles => 1})
my_restaurante.cost({:rice => 3, :noodles => 2})