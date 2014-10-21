class Node
  attr_accessor :val, :next_node

  def initialize(val, next_node)
    @val = val
    @next_node = next_node
  end
end

class SLL # 'singly linked list'
  attr_reader :head

  def initialize
    @head = nil
  end

  def insert(val)
    node = Node.new(val, head)
    @head = node
  end

  def size
    count = 0
    n = head
    while n
      count += 1
      n = n.next_node
    end
    count
  end

  def search(val)
    n = head
    while n
      return n if n.val == val
      n = n.next_node
    end
  end

  def remove(val)
    n = head
    prev = nil
    while n
      if n.val == val
        if prev
          prev.next_node = n.next_node
        else
          @head = head.next_node
        end
        n.next_node = nil
        return n.val
      end
      prev = n
      n = n.next_node
    end
    nil
  end

  def to_s
    string = []
    n = head
    while n
      string << n.val.to_s
      n = n.next_node
    end
    string.join(", ")
  end
end




