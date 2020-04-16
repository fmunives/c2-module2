def two_fer
    print "who?"
    name = gets.chomp.capitalize!
    !name ? name = "you" : nil
    "One for #{name}, one for me"
end
puts two_fer
