require './lib/sum-array'

describe MyArray do
  describe "#sum" do
    it "returns the sum of an array" do
      my_array = MyArray.new([1,2,3])
      expect(my_array.sum).to eql(6)
    end
  end
  describe "#sum" do
    it "returns the sum of an array" do
      my_array = MyArray.new([1,2,3,4,5])
      expect(my_array.sum).to eql(15)
    end
  end
  describe "#sum" do
    it "returns the sum of an array" do
      my_array = MyArray.new([1,2,3,0,1])
      expect(my_array.sum).to eql(7)
    end
  end
end