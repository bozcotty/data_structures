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
    # if linklist at array[index] does not yet exist,
    #   create it
    #   and insert node as/at head
    # else
    #   insert node into existing linkedlist at @array[index]
    # end
  end

  private

  def hash(key)
    # find a good hash function and insert here
  end

  # now come up with good tests for 25k words!
