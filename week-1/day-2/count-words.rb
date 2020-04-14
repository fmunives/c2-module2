def count_words(text)
  words = text.split(' ')
  count = Hash.new(0)

  words.each do |word|
    count[word.downcase] += 1
  end
  count
end

puts count_words('cake cake caKe I like cake very much please gIve me cake I need the cake i need it')
