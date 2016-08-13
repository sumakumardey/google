
class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value,left,right)
    self.value = value
    self.left = left
    self.right = right
  end
end


class BinarySearchTree
  
  def initialize(val)
    puts "Initializing with:: " + val.to_s
    @root = TreeNode.new(val,nil,nil)
  end

  def preorder(node = @root)
    return if node.nil?
    # root
    puts "Inserting preorder: #{node.value}"
    # left
    preorder(node.left)
    # right
    preorder(node.right)

  end

  def inorder(node = @root)
    return if node.nil?
    # left
    inorder(node.left)
    # root
    puts "Inserting inorder: #{node.value}"
    # right
    inorder(node.right)
  end

  def postorder(node = @root)
    return if node.nil?
    # left
    postorder(node.left)
    # right
    postorder(node.right)
    # root
    puts "Inserting postorder: #{node.value}" 
  end

  def insert(value)
    puts "Inserting :" + value.to_s
    current_node = @root
    while current_node != nil do
      if((value < current_node.value) && (current_node.left == nil))
        current_node.left = TreeNode.new(value,nil,nil)
      elsif((value > current_node.value) && (current_node.right == nil))
        current_node.right = TreeNode.new(value,nil,nil)
      elsif(value < current_node.value)
        current_node = current_node.left
      elsif(value > current_node.value)
        current_node = current_node.right
      else
        return
      end
    end
  end
end