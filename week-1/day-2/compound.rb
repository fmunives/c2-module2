def compound_interest(amount, months)
  interest = 0.01
  i = 1
  while i <= months
    amount = amount*(interest+1)
    i = i + 1
  end
  amount.round(2)
end

puts compound_interest(1000,3)