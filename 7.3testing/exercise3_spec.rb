require_relative "exercise3"

RSpec.describe Descender do
  describe "#descending" do

    it "tes1" do
      expect(Descender.descending(21445)).to eq(54421)
    end
    
    it "tes2" do
      expect(Descender.descending(145263)).to eq(654321)
    end
    
    it "tes3" do
      expect(Descender.descending(1254859723)).to eq(9875543221)
    end
  end
end