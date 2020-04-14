def longest_string(string_a, string_b)
    longest = ""
    string_a.length > string_b.length ? longest = string_a : longest = string_b
    puts "the longest is: #{longest}"
end

longest_string("I am the longest.", "No, you are not the longest; liar.")