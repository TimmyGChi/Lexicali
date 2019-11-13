require './lexicon'

class SpecialLexicon < Lexicon

  # Generates an array of all the anagrams of the given word
  # Approach is, storing a hash with sorted word as key and the value
  # is a list of words before it was sorted.
  def get_anagrams(word)
    # FILL ME IN
    return Lexicon.new.sortedHash[word.chars.sort.join]
  end


  # Generates an array of all the words that have the given word as a prefix
  def get_prefixed_words(prefix)
    # FILL ME IN
    return []
  end


  # Generates the shortest possible word ladder connecting the two words
  def get_word_ladder(start_word, end_word)
    # FILL ME IN
    return []
  end
end
