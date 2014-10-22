require 'spec_helper'
require 'stack.rb'

describe 'build a Stack' do
  before do
    @stack = Stack.new
    # @stack = stack
    @stack.push 'Larry'
    @stack.push 'Moe'
    @stack.push 'Curly'
    puts @stack
  end

  it 'can insert a new node, only at the head' do
    @stack.push 'Spanky'
    @stack.to_s.must_equal "Spanky, Curly, Moe, Larry"
    puts @stack.to_s
  end

  it 'can delete a node off the stack, only at the head' do
    @stack.pop.must_equal "Curly"
    @stack.to_s.must_equal "Moe, Larry"
    puts @stack.to_s
  end
end

