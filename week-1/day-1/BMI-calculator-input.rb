def calculateBMI()

    print "Enter your weight(kg): "
    weight = gets.chomp.to_f
    
    print "Enter your height(m): "
    height = gets.chomp.to_f

    return (weight / height ** 2).round(2)
end

bmi = calculateBMI
puts  "Your BMI is: #{bmi}"