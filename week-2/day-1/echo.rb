def echo(message, repeat)
    if repeat.positive? and repeat.is_a? Integer
      puts "Ok, here it goes:"
      repeat.times do puts message end
    else
      raise ArgumentError.new("I don't understand how many times do you want to echo the string!")
    end
end

begin 
  print "What do you want to echo?"
  message = gets.chomp
  print "How many times do you want to repeat it?"
  repeat = gets.chomp.to_i
  echo(message, repeat)
rescue ArgumentError => e
  puts e
  retry
end

