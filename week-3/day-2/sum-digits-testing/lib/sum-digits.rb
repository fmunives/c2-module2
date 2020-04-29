class SumDigits
  def sum_digits(n)
    n = n.to_s.split('').inject(0) { |sum, value|  sum += value.to_i } while n.to_s.length > 1
    n
  end
end

# puts digital_root(942)