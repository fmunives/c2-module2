def palindrome sentence
    sentence = sentence.downcase.gsub(" ","")
    if sentence == sentence.reverse
        puts "true"
    else
        puts "false"
    end
end

palindrome "Sometamos o matemos"