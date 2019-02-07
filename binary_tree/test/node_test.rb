require 'minitest/autorun'
require '../lib/binary_tree'

class NodeTest < Minitest::Test

  def test_node_children_are_nil
    node = Node.new(1)

    assert_nil node.left
    assert_nil node.right
  end

  def test_node_can_be_initialized_with_value
    new_value = 2
    node = Node.new(new_value)

    assert_equal new_value, node.value
  end

end
