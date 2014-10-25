class Node
  attr_accessor :left, :right, :val

  def initialize()
    @left = nil
    @right = nil
    @value = nil
  end
end

# require 'Node'

class BinaryTree
  attr_accessor :root

  def initialize()
    @root = Node.new
  end

  def pre_order(node)
    p node.value
    if node.left != nil
      pre_order(node.left)
    end
    if node.right != nil
      pre_order(node.right)
    end
  end
