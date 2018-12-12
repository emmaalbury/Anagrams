class Anagrams

  def initialize
    @length_list = []
    @split_word = []
    @sorted_words = {}
    @sorted_list =[]
  end

  def split(word)
    @split_word << word.split('')
    @split_word
  end

  def sort_letters(word)
    sorted_word = word.chars.sort(&:casecmp).join
    puts sorted_word
    sorted_words = Hash.new[sorted_word]
    @length_list.each do |word|
      @sorted_list << word.chars.sort(&:casecmp).join
    end
    puts @sorted_list
  end

  def check_length(word, list)
    list.each do |w|
      if w.length == word.length
        @length_list << w
      end
    end
    @length_list
  end

end

ana = Anagrams.new
ana.split('mace')
ana.check_length('mace', ['came', 'dog', 'Emma', 'base', 'best', 'pot', 'acme',\
   'sloppy', 'camel', 'remain', 'scare'])
ana.sort_letters('mace')
