def two_fer
    print "who?"
    name = gets.chomp.capitalize!
    if !name
       name = "you"
    end
    puts "One for #{name}, one for me"
end

two_fer
