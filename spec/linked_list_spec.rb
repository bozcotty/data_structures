require 'spec_helper'

require 'linked_list'

describe 'singly linked list' do
  it 'should insert a new node at the head' do
    l = SLL.new
    l.insert(66)
    l.insert(55)
    l.insert(44)
    l.head.val.must_equal(44)
    puts l.head.val
  end

  it 'should know its size' do
    l = SLL.new
    l.insert(99)
    l.insert(88)
    l.insert(77)
    l.insert(66)
    l.size.must_equal (4)
    puts l.size
  end

  it 'should be able to find a node by its value' do
    l = SLL.new
    l.insert(99)
    l.insert(77)
    l.insert(55)
    l.insert(33)
    l.insert(11)
    l.search(55).next_node.val.must_equal(77)
    puts l.search(55)
  end

  it 'should be able to remove a node' do
    l = SLL.new
    l.insert(99)
    l.insert(77)
    l.insert(55)
    l.insert(33)
    l.insert(11)
    l.remove(33).must_equal (33)
    l.size.must_equal (4)
    puts l.remove(33)
  end

  it 'should print out all node values to a comma sep list' do
    l = SLL.new
    l.insert(99)
    l.insert(77)
    l.insert(55)
    l.insert(33)
    l.to_s.must_equal ('33, 55, 77, 99')
    puts l.to_s
  end
end
