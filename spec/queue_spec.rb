require 'spec_helper'

describe 'build a Queue' do
  before do
    @q= Queue.new
    @q.push 'Larry'
    @q.push 'Moe'
    @q.push 'Curly'
  end

  it 'can insert (push) a new node, only at the head' do
    @stack.push 'Spanky'
    @stack.to_s.must_equal "Spanky, Curly, Moe, Larry"
    puts @stack.to_s
  end

  it 'can delete (pop) a node off the stack, only at the head' do
    @stack.pop.must_equal "Curly"
    @stack.to_s.must_equal "Moe, Larry"
    puts @stack.to_s
  end
end
