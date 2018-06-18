require_relative "exercise4"

RSpec.describe DeepCounter do
  describe "#deep_count" do
    it "tes1" do
      expect(DeepCounter.deep_count([])).to eq(0)
    end
    it "tes2" do
      expect(DeepCounter.deep_count(["x","y",["z"]])).to eq(4)
    end
    it "tes3" do
      expect(DeepCounter.deep_count([1,2,[3,4,[5]]])).to eq(7)
    end
    it "tes4" do
      expect(DeepCounter.deep_count([[[[[[[[]]]]]]]])).to eq(8)
    end
  end
end 