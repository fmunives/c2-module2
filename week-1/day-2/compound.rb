def compound_interest

  print "Enter your money: "
  amount = gets.chomp.to_i 
  print "Enter the months: "
  months = gets.chomp.to_i
  print "Enter the rate: "
  rate = gets.chomp.to_f

  rate = rate / 100
  i = 1
  while i <= months
    amount = amount*(rate+1)
    i += 1
  end
  amount.round(2)

end

new_amount = compound_interest
puts "Your new money is S/.#{new_amount}"