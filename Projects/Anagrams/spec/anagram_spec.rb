require 'anagram'

describe Anagrams do

  let(:anagram) { described_class.new }

  context 'splits' do
    describe "#split" do
      it "splits word string" do
        expect(anagram.split('dog')).to eq(['d', 'o', 'g'])
      end
    end

    # describe '#split_list' do
    #   it "splits list"
    # end
  end

  describe "#check_length" do
    it "matches length of words" do
      expect(anagram.check_length('mace', ['came', 'dog', 'Emma', 'base', 'best', 'pot',\
         'sloppy', 'camel', 'remain', 'scare'])).to eq ['came', 'Emma', 'base', 'best']
    end
  end

end
