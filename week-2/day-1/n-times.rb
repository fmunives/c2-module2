def put_n(n, message)
  if n.positive? and n.is_a? Integer
  n.times do puts "#{message} for #{n} times" end
  else
    raise ArgumentError.new("Only permitted a positive and interger numbers")
  end
end

put_n(-1, "hola que tal")