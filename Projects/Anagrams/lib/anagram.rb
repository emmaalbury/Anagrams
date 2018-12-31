class Anagrams

  def initialize
    @length_list = []
    # @split_word = []
    @sorted_word = ''
    @sorted_list = {}
    @anagram_list = []
  end

  # def split(word)
  #   @split_word << word.downcase.split('')
  #   @split_word
  # end

  def check_length(word, list)
    list.each do |w|
      if w.length == word.length
        @length_list << w
      end
    end
    @length_list
  end

  def sort_word(word)
    @sorted_word = word.chars.sort.join
  end

  def sort_letters
    @length_list.each do |w|
      @sorted_list[w] = w.downcase.chars.sort.join
    end
    @sorted_list
  end

  def anagrams
    @sorted_list.each do |key, value|
      if @sorted_word == value
        @anagram_list << key
      end
    end
    puts @anagram_list
  end

end

ana = Anagrams.new
# ana.split('mace')
ana.check_length('mace', ['came', 'dog', 'Emma', 'base', 'best', 'pot', 'acme',\
   'sloppy', 'camel', 'remain', 'scare', 'Meca'])
ana.sort_word('mace')
ana.sort_letters
ana.anagrams
