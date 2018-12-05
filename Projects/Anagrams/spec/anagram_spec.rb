require 'anagram'

describe Anagrams do

  let(:anagram) { described_class.new }

  describe "#split" do
    it "splits word string" do
      # allow(anagram).to receive(:split) {'dog'}
      expect(anagram.split('dog')).to eq(['d', 'o', 'g'])
    end
  end


end
