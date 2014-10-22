require 'linked_list'

class Q < SLL

  def enqueue(val)
    # adds a (newest) node at the head
    insert(val)
  end

  def dequeue
    # takes (oldest) node entered out of the queue
    n = head
    n = n.next_node while n.next_node
    if n.next_node = nil?
      remove n
    end
  end

  def size_of_q
    if @head == nil
      return 0
    else
      return size
    end
  end
end
