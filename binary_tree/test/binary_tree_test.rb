require 'minitest/autorun'
require '../lib/binary_tree'

class BinaryTreeTest < Minitest::Test

  def test_root_node
    tree = BinaryTree.new
    assert_nil tree.root
  end

  def test_contains_returns_true_if_value_is_in_tree
    tree = BinaryTree.new
    val1 = 1
    val2 = 2
    val3 = 3
    tree.insert(val1)
    tree.insert(val2)
    tree.insert(val3)

    assert_equal true, tree.contains?(val1)
  end

  def test_contains_returns_false_if_value_is_not_in_tree
    tree = BinaryTree.new
    val1 = 1
    val2 = 2
    val3 = 3
    val4 = 4
    tree.insert(val1)
    tree.insert(val2)
    tree.insert(val3)

    assert_equal false, tree.contains?(val4)
  end

  def test_contains_with_lots_integers_in_tree
    skip
    tree = BinaryTree.new

    10000000.times{ tree.insert(rand 10000000)}
    require 'pry'; binding.pry
  end

end
