require './node'
require './trie'

class Lexicon

  def initialize
    # The full array of all words
    @array = []
    # A hash containing all the words as keys
    @hash = {}
    # A hash containing sorted words as keys and the value
    # is a list of words
    @sortedHash = {}
    # A Trie data structure to hold a word's characters as Nodes.
    @trie = Trie.new
 
    file = File.new('words.txt', 'r')
    while (line = file.gets)
      line.strip!.downcase!
      sortedLine = line.chars.sort.join
      # @array.push line
      # @hash[line] = true

      add_anagrams(sortedLine, line)
      @trie.add_word(line)
    end
    file.close
  end

  def sortedHash()
    @sortedHash
  end

  def trie()
    @trie
  end

  # If key exists, add to existing list. Else, create a new list with item
  def add_anagrams(key, word) 
    if @sortedHash.has_key?(key)
      @sortedHash[key].push word
    else
      @sortedHash[key] = [word]
    end
  end

  # Returns true if the given word is in the lexicon
  def is_word?(word)
    return @hash.has_key?(word.downcase)
  end
end
