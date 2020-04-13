def calculateBMI
    old_weight = 80
    weight_lost = 4
    new_weight = old_weight - weight_lost
    height = 1.85
    return (new_weight / height ** 2).round(2)
end

puts calculateBMI


