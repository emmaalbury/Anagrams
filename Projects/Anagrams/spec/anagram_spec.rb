require 'anagram'

describe Anagrams do

  let(:anagram) { described_class.new }

  # describe "#split" do
  #   it "splits word string" do
  #     expect(anagram.split('dog')).to eq([['d', 'o', 'g']])
  #   end
  # end

  describe "#check_length" do
    it "matches length of words" do
      expect(anagram.check_length('mace', ['came', 'dog', 'Emma', 'base',\
     'best', 'pot', 'acme', 'sloppy', 'camel', 'remain', 'scare', 'Meca'])).to eq \
     ['came', 'Emma', 'base', 'best', 'acme', 'Meca']
    end
  end

  describe '#sort_letters' do
    it "sorts letters in words alphabetically" do
      anagram.instance_variable_set(:@length_list, ['came', 'Emma', 'base',\
      'best', 'acme', 'Meca'])
      expect(anagram.sort_letters).to eq ({"came"=>"acem", "Emma"=>"aemm"\
      , "base"=>"abes", "best"=>"best", "acme"=>"acem", "Meca"=>"acem"})
    end
  end

  describe "#anagrams" do
    it "returns a list of anagrams" do
      anagram.instance_variable_set(:@anagram_list, ["came", "acme", "Meca"])
      expect(anagram.anagrams).to eq ["came", "acme", "Meca"]
    end
  end

end
