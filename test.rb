require './linked_list'
require 'test/unit'

class TestLinkedList < Test::Unit::TestCase
  def test_create_new_list
    @list = List.new(1)
    assert_equal([1], @list.to_a)
  end
  
  def test_push
    @list = List.new(1)
    @list.push(2)
    assert_equal([1, 2], @list.to_a)
  end
  
  def test_pop_multiple_elements
    # pops from an list with more than one element
    @list = List.new(1, 2, 3)
    assert_equal(3, @list.pop)
    assert_equal([1, 2], @list.to_a)
  end
  
  def test_pop_one_element
    @list = List.new(1)
    # pops from an list with one element
    assert_equal(1, @list.pop)
    assert_equal([], @list.to_a)
  end
  
  def test_pop_zero_elements
    # pops from an list with zero elements
    @list = List.new
    assert_raise(RuntimeError) { @list.pop }
  end  

  def test_unshift
    @list = List.new(1)
    @list.unshift(0)
    assert_equal([0,1], @list.to_a)
  end
  
  def test_shift_multiple_elements
    # shifts from an list with more than one element
    @list = List.new(1, 3, 4)
    assert_equal(1, @list.shift)
    assert_equal([3, 4], @list.to_a)
  end
  
  def test_shift_one_element
    @list = List.new(1)
    # shifts from an list with one element
    assert_equal(1, @list.shift)
    assert_equal([], @list.to_a)
  end
  
  def test_shift_zero_elements
    # shifts from an list with zero elements
    @list = List.new
    assert_raise(RuntimeError) { @list.shift }
  end
end