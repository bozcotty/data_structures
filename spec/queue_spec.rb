require 'spec_helper'
require 'queue'

describe 'a Queue' do
  before do
    @q = Q.new
    @q.insert(3)
    @q.insert(44)
    @q.insert(555)
  end

  it 'can enqueue a new entity onto the back of a collection' do
    @q.enqueue(7777)
    @q.to_s.must_equal ('7777, 555, 44, 3')
    puts @q.to_s
  end

  it 'can dequeue the oldest entity in the collection' do
    @q.dequeue
    @q.to_s.must_equal ('555, 44')
  end

  it 'can return the size of the Queue' do
    puts @q.size.to_s
  end
end
