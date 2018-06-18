require_relative "exercise2"

RSpec.describe Palindrome do
  describe "#find_palindrome" do
    it "tes1" do
      expect(Palindrome.find_palindrome(100,2)).to eq([101,111])
    end
    
    it "tes2" do
      expect(Palindrome.find_palindrome(22,3)).to eq([22,33,44])
    end
    
    it "Tes with zero number" do
      expect(Palindrome.find_palindrome(22,0)).to eq([])
    end
    
  end
end