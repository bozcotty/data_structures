require_relative './linked_list'

class AllOutaStuffError < RuntimeError
end

class Stack < SLL
  attr_reader :head, :data

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

s = Stack.new
p s
s.push(8)
p s
s.push(101)
p s.to_s
s.push("Larry")
p s.to_s
s.pop
p s.to_s
s.pop
p s.to_s
s.pop
p s.to_s
s.pop
p s.to_s



