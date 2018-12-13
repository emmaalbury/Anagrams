require 'anagram'

describe Anagrams do

  let(:anagram) { described_class.new }

  describe "#split" do
    it "splits word string" do
      expect(anagram.split('dog')).to eq([['d', 'o', 'g']])
    end
  end

  describe "#check_length" do
    it "matches length of words" do
      expect(anagram.check_length('mace', ['came', 'dog', 'Emma', 'base', 'best', 'pot', 'acme',\
         'sloppy', 'camel', 'remain', 'scare'])).to eq ['came', 'Emma', 'base', 'best', 'acme']
    end
  end

  describe '#sort_letters' do
    it "sorts letters in words alphabetically" do
      anagram.instance_variable_set(:@length_list, ['came', 'Emma', 'base', 'best', 'acme'])
      expect(anagram.sort_letters('mace')).to eq ['acem', 'aEmm', 'abes','best','acem']
    end
  end

end
