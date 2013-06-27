class Node
  attr_accessor :value, :next
  
  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end
end

class List
  attr_accessor :first
  attr_reader :length
  
  def initialize(*items)
    @length = items.length
    @first = Node.new(items.shift)
    items.each { |item| self.push(item) }
  end
  
  # adds value to end of list
  # returns self
  def push(value)
    node = Node.new(value)
    current_node = @first
    while current_node.next != nil
      current_node = current_node.next
    end
    current_node.next = node
    @length += 1
    return self
  end
  
  # Removes last element from list
  # returns that element's value
  def pop
    raise "List is empty" if @length < 1
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
    @length -= 1
    return to_return
  end
  
  # adds value to beginning of list
  # returns self
  def unshift(value)
    node = Node.new(value, @first)
    @first = node
    @length += 1
    return self
  end
  
  # Removes first element from list
  # returns that element's value
  def shift
    raise "List is empty" if @length < 1
    to_return = @first.value
    @first = @first.next
    @length -= 1
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