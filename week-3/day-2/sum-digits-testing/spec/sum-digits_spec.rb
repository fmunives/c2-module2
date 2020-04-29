require './lib/sum-digits'

describe SumDigits do
  describe "#sum_digits" do
    it "return the sum of digits, the sum of 62 is 8" do
      sum_digits = SumDigits.new
      expect(sum_digits.sum_digits(62)).to eql(8)
    end
  end
  describe "#sum_digits" do
    it "return the sum of digits, the sum of 32 is 5" do
      sum_digits = SumDigits.new
      expect(sum_digits.sum_digits(32)).to eql(5)
    end
  end
  describe "#sum_digits" do
    it "return the sum of digits, the sum of 942 is 15 and the sum of 15 is 6" do
      sum_digits = SumDigits.new
      expect(sum_digits.sum_digits(942)).to eql(6)
    end
  end
end