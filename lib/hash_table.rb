require 'linked_list'

class HashTable
  attr_reader :size

  def initialize(size)
    @array = Array.new(size)
    @size = size
  end

  def get(key)
    fail KeyError if key.class != String
    index = hash(key)
    linklist = @array[index]
    linklist.search(key)
  end

  def set(key, val)
    fail KeyError if key.class != String
    node = Node.new(key, val)
    index = hask(key)
    if index empty?
      @head = node
    else
      insert(val)
    end
  end

  private

  def hash(key)
    key.chars.map(&:ord).reduce(:+)
  end
