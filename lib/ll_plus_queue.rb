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
    string.join(', ')
  end
end

#  - - - - - - - - - - - -

# Q class for enqueue and dequeue
class Q < SLL
  def enqueue(val)
    # adds a (newest) node at the head
    insert(val)
  end

  def dequeue
    # takes (oldest) node entered out of the queue
    n = head
    puts n.val
    puts "#{n.val} is the head now"
    n = n.next_node while n.next_node
    puts n.val
    remove(n.val)
    puts "now #{n.val} has been dequeued"
  end

  def size_of_q
    if @head.nil?
      puts 0
    else
      puts size
    end
  end

  def peek
    n = head
    n = n.next_node while n.next_node
    puts "let's peek at the next to dequeue: it's #{n.val} !"
  end
end

# - - - - - - - - - -  - -

qu = Q.new
qu.enqueue(10)
p qu

qu.enqueue(30)
p qu

qu.dequeue
p qu

qu.enqueue(50)
p qu

qu.enqueue(70)
p qu

qu.peek
qu.dequeue
qu.pe


