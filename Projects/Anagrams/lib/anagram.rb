class Anagrams

  def initialize
    @length_list = []
    @split_word = []
    @sorted_list = {}
  end

  def split(word)
    @split_word << word.split('')
    @split_word
  end

  def check_length(word, list)
    list.each do |w|
      if w.length == word.length
        @length_list << w
      end
    end
    @length_list
  end

  def sort_letters(word)
    sorted_word = word.chars.sort(&:casecmp).join
    @length_list.each do |w|
      @sorted_list[w] = w.chars.sort(&:casecmp).join
    end
    p @sorted_list
  end

end

ana = Anagrams.new
ana.split('mace')
ana.check_length('mace', ['came', 'dog', 'Emma', 'base', 'best', 'pot', 'acme',\
   'sloppy', 'camel', 'remain', 'scare'])
ana.sort_letters('mace')
