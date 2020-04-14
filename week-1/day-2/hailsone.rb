def hailstone
  print "Enter a number to calculate hailstone: "
  number = gets.chomp.to_i
  step = 0
  until number == 1
    if number.even?
      number = number / 2
    else
      number = number * 3 + 1
    end
    step += 1
    puts number
  end
  puts "there are #{step} steps to calculate hailstone"
end

hailstone
