list = [
  {category: 'Sporting Goods', price: 'USD 49.99', stock: true, amount: 10, name: 'Football'},
  {category: 'Sporting Goods', price: 'PEN 9.49', stock: true, amount: 3, name: 'Baseball'},
  {category: 'Sporting Goods', price: 'ARS 29.99', stock: false, amount: 0, name: 'Basketball'},
  {category: 'Electronics', price: 'PEN 99.99', stock: true, amount: 5, name: 'iPod Touch'},
  {category: 'Electronics', price: 'USD 339.99', stock: false, amount: 0, name: 'iPhone 5'},
  {category: 'Electronics', price: 'PEN 199.99', stock: true, amount: 2, name: 'Nexus 7'},
]

def total_usd_goods (list)
  new_list = Hash.new
   list.each do |value|
    if value[:stock] && (value[:category] == 'Sporting Goods')
      new_list[value[:price].split(' ')[0]] = value[:price].split(' ')[1].to_f
    end
  end
  sum = 0
  new_list.each do |symbol, price|
    if symbol == 'PEN'
      price = price / 3
    elsif symbol == 'ARS'
      price = price / 40
    end
    sum += price
  end
  puts "The sum USD is: #{sum.round(2)}"
end

def most_stock_value_goods (list)
  new_list = []
  list.select { |value| new_list << value[:amount] if value[:category] == 'Sporting Goods' }
  puts "The max amount of products is: #{new_list.max}"
end

total_usd_goods(list)
most_stock_value_goods(list)