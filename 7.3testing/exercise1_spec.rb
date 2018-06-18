require_relative "exercise1"

RSpec.describe Sentence do
  describe "#create_sentences" do
    
    it "Empty parameter return empty string" do
      expect(Sentence.create_sentence).to eq("")
    end
    
    it "Return hello ruby world" do
      param = ["Hello", "Ruby", "World!"]
      expect(Sentence.create_sentence(param)).to eq("Hello Ruby World!")
    end
    
  end
end