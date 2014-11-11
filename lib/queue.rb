require 'linked_list.rb'
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
    puts 'above is n/head initially'
    n = n.next_node while n.next_node
    puts n.val
    puts 'now n is the above'
    remove(n.val)
  end

  def size_of_q
    if @head.nil?
      puts 0
    else
      puts size
    end
  end
end
