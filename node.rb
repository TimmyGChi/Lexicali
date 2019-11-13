# Prefix Tree implementation using a Node Class with a few attributes.
# value: one character
# next: an array that stores all characters as Node objects that comes after 
# word: True/False if this is a valid word
class Node
  attr_reader   :value, :next
  attr_accessor :word
  def initialize(value)
    @value = value
    @word  = false
    @next  = []
  end
end