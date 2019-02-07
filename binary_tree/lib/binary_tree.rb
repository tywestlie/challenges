require_relative 'node'

class BinaryTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(value)
    if @root.nil?
      @root = Node.new(value)
    else
      @root.insert(value)
    end
  end

  def contains?(value, node = @root)
    return false if node.nil?
    if value < node.value
      contains?(value, node.left)
    elsif value > node.value
      contains?(value, node.right)
    else
      return true
    end
  end
  
end
