# binary tree data structure
class Node
  attr_accessor :left, :right, :val

  def initialize
    @left = nil
    @right = nil
    @value = nil
  end
end

# Binary Tree
class BinaryTree
  attr_accessor :root

  def initialize
    @root = Node.new
  end

  def pre_order(node)
    p node.value
    pre_order(node.left) unless node.left.nil?
    pre_order(node.right) unless node.right.nil?
  end

  def in_order(node)
    in_order(node.left) unless node.left.nil?
    p node.value
    in_order(node.right) unless node.right.nil?
  end

  def post_order(node)
    post_order(node.left) unless node.left.nil?
    post_order(node.right) unless node.right.nil?
    p node.value
  end

  def traversal
    print "Pre-Order Traversal:\n"
    pre_order(@root)
    print "\n"

    print "In-Order Traversal:\n"
    in_order(@root)
    print "\n"

    print "Post-Order Traversal:\n"
    post_order(@root)
  end
end

bintree = BinaryTree.new
root = bintree.root
root.value = 'Tim'

node = Node.new
node.value = 'Jony'
root.left = node

node = Node.new
node.value = 'Dan'
root.left.left = node

node = Node.new
node.value = 'Katie'
root.left.right = node

node = Node.new
node.value = 'Peter'
root.left.right.left = node

node = Node.new
node.value = 'Andrea'
root.left.right.right = node

node = Node.new
node.value = 'Phil'
root.right = node

node = Node.new
node.value = 'Craig'
root.right.left = node

node = Node.new
node.value = 'Eddie'
root.right.right = node

bintree.traversal
