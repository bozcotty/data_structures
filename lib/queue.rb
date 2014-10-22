require 'linked_list'

class Q < SLL

  def enqueue(val)
    # adds a new node at the head
    insert(val)
  end

  def dequeue()
    # takes first node entered out of the queue
    n = head
    n = n.next_node while n.next_node
    remove n
  end

  def size_of_q
    if @head == nil
      return 0
    else
      size
    end
  end
end
