def absolute_sum(number_1, number_2)
    result = number_1 + number_2
    if(result < 0)
        result = result * -1
    end
    result
end

puts absolute_sum(-2,-1)