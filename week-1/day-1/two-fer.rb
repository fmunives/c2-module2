def two_fer(name:)
    name = "you" if !name
    "One for #{name}, one for me"
end

print "who?"
your_name = gets.chomp.capitalize!
puts two_fer(name:your_name) #refactoring with keywords. 

# old version

# def two_fer
#     print "who?"
#     name = gets.chomp.capitalize!
#     !name ? name = "you" : nil
#     "One for #{name}, one for me"
# end
# puts two_fer
