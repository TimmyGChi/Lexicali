class Lexicon

  def initialize
    # The full array of all words
    @array = []
    # A hash containing all the words as keys
    @hash = {}
    # A hash containing sorted words as keys and the value
    # is a list of words
    @sortedHash = {}

    file = File.new('words.txt', 'r')
    while (line = file.gets)
      line.strip!.downcase!
      sortedLine = line.chars.sort.join
      # @array.push line
      # @hash[line] = true

      # If key exists, add to existing list
      # else, create a new list with item
      if @sortedHash.has_key?(sortedLine)
        @sortedHash[sortedLine].push line
      else
        @sortedHash[sortedLine] = [line]
      end
    end
    file.close
  end

  def sortedHash()
    @sortedHash
  end


  # Returns true if the given word is in the lexicon
  def is_word?(word)
    return @hash.has_key?(word.downcase)
  end
end
