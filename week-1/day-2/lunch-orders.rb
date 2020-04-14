
def lunch_orders(people_orders)
  count_food = Hash.new(0)
  people_orders.each do |key, value| count_food[value] += 1 end
  count_food
end

puts lunch_orders(people_orders = {
  "julio" => "pizza",
  "diego" => "saltado",
  "andres" => "hamburguer",
  "ximena" => "ceviche",
  "felipe" => "pizza",
  "jon" => "saltado",
  "snow" => "ceviche",
  "pepe" => "fried chicken",
  "queen of dragons" => "ice cream",
  "jose" => "hamburguer",
  "jafeth" => "fried chicken"
})