require './lib/calculator'

describe Calculator do

  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5,4,3)).to eql(12)
    end
  end

  describe "#multiply" do
    it "return the multiply of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(2,2)).to eql(4)
    end
    it "return the multiply of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(2,3,4)).to eql(24)
    end
  end

  describe "#subtract" do
    it "return the subtract of two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(4,3)).to eql(1)
    end
    it "return the subtract of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(10,3,1)).to eql(6)
    end
  end

  describe "#divide" do
    it "it returns the divive of two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(10,2)).to eql(5)
    end
    it "it returns the divive of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(40,2,2)).to eql(10)
    end
  end

end