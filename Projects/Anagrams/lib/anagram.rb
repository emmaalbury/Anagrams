class Anagrams

  def initialize
    @length_list = []
  end

  def split(word)
    word.split('')
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

# ana = Anagrams.new
# ana.check_length('mace', ['came', 'dog', 'Emma', 'base', 'best', 'pot',\
#    'sloppy', 'camel', 'remain', 'scare'])
