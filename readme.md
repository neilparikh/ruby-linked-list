# Linked List
This is my implementaion of a linked list in Ruby.

## Quick Example

```ruby
require './linked_list'

list = List.new(1, 2, 3)
p list.to_a #=> [1, 2, 3]

list.push(4) 
p list.to_a #=> [1, 2, 3, 4]

list.pop
p list.to_a #=> [1, 2, 3]

list.unshift(0)
p list.to_a #=> [0, 1, 2, 3]

list.shift
p list.to_a #=> [1, 2, 3]
```