# A Class to hold the root node.
class Trie
  def initialize
    @root = Node.new("*")
  end

  def add_word(word)
  	letters = word.chars
  	base    = @root
  	letters.each { |letter| base = add_character(letter, base.next) }
  	base.word = true
  end
  
  def find_word(word)
  	letters = word.chars
  	base = @root
  	base = @root

  	word_found = letters.all? { |letter| base = find_character(letter, base.next) }
  	
  	yield word_found, base if block_given?

  	base
  end

  def add_character(character, trie)
  	trie.find { |n| n.value == character } || add_node(character, trie)
  end

  def find_character(character, trie)
  	trie.find { |n| n.value == character }
  end

  def add_node(character, trie)
  	Node.new(character).tap { |new_node| trie << new_node }
  end

  def include?(word)
  	find_word(word) { |found, base| return found && base.word }
  end

end