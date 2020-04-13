def calculate_presure(chemical_amount, temperature, volume)
    ideal_gas = 8.314
    pressure = (chemical_amount*ideal_gas*temperature) / volume
end

puts calculate_presure(5,500,2)