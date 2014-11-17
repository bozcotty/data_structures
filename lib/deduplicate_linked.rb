class Node
  def initialize(prev, data, nexxt)
    @prev = prev
    @data = data
    @next = nexxt
  end

  attr_accessor :prev, :data, :next

  def clear
    @prev = @data = @next = nil
  end
end

class List
  def initialize
    @head = @tail = nil
    @size = 0
  end

  def empty?
    @size == 0
  end

  def push(data)
    node = Node.new(@tail, data, nil)
    if empty?
      @head = @tail = node
    else
      @tail.next = node
      @tail = node
    end
    @size += 1
    data
  end
end

list = List.new do
  200.times do
    list.push(rand(1..100))
  end
end

p list
