class String
  def vowel?
    self =~ /[aeiouAEIOU]/ ? true : false
  end
end

p "lol".vowel?