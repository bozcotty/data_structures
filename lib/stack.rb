require 'linked_list'

class AllOutaStuffError < RuntimeError
end

class Stack < SLL

  def push(val)
    insert(val)
  end

  def pop()
    if @head == nil
      fail AllOutaStuffError, 'You can\'t pop something off an empty stack!'
    else
      removed = @head
      @head = @head.next_node
      return removed.val
    end
  end
end
