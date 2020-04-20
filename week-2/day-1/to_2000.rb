class String
  def to_2000
    word = ""
    self.length.times { |i| i % 2 == 0 ? word += self[i].upcase : word += self[i].downcase }
    word 
  end
end

puts "Hi, how are you?".to_2000 #output = Hi, HoW ArE YoU?