class Node
  attr_accessor :value, :next
  
  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end
end

class List
  attr_accessor :first
  
  def initialize(*items)
    @first = Node.new(items.shift)
    items.each { |item| self.push(item) }
  end
  
  # adds node to end of list
  # returns self
  def push(node)
    node = Node.new(node)
    current_node = @first
    done = false
    while !done
      if current_node.next == nil
        done = true
      else
        current_node = current_node.next
      end
    end
    current_node.next = node
    return self
  end
  
  # Removes last element from list
  #returns that element's value
  def pop
    current_node = @first
    done = false
    while !done
      if current_node.next.next == nil
        done = true
      else
        current_node = current_node.next
      end
    end
    to_return = current_node.next.value
    current_node.next = nil
    return to_return
  end
  
  # adds node to beginning of list
  # returns self
  def unshift(node)
    node = Node.new(node, @first)
    @first = node
    return self
  end
  
  # Removes first element from list
  # returns that element's value
  def shift
    to_return = @first.value
    @first = @first.next
    return to_return
  end
  
  def to_a
    current_node = @first
    array = []
    while current_node != nil
      array << current_node.value
      current_node = current_node.next
    end
    return array
  end
end