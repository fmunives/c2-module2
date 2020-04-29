require './lib/age'

describe Age do
  describe "#get_age" do
    it "retuns the currently age (for example: 29)  if you birthday was yesteday" do
      my_age = Age.new
      expect(my_age.get_age(1991, 4, 27)).to eql(29)
    end
  end
  describe "#get_age" do
    it "retuns the currently age (for example: 29)  if you birthday is today" do
      my_age = Age.new
      expect(my_age.get_age(1991, 4, 28)).to eql(29)
    end
  end
  describe "#get_age" do
    it "retuns the currently age (for example: 28) if you birthday is tomorrow" do
      my_age = Age.new
      expect(my_age.get_age(1991, 4, 29)).to eql(28)
    end
  end
end