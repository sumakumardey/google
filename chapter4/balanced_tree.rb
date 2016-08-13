class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value,left,right)
    self.value = value
    self.left = left
    self.right = right
  end
end

class BalancedTree

  def initialize(value)
    @root = TreeNode.new(value,nil,nil)
  end
  
  def max_height(node = @root)
    return 0 if node.nil?
    return (1 + max(max_height(node.left),max_height(node.right)))
  end

  def max(value1,value2)
    if value1 >= value2
      return value1 
    else
      return value2
    end
  end

  def is_balanced?(node=@root)
    if node.nil?
      return true
    end

    lh = max_height(node.left)
    rh = max_height(node.right)

    if((lh - rh).abs >= 1 && is_balanced?(node.left) && is_balanced?(node.right)
      return true
    end

    return false
  end
end