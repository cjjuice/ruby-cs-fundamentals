# ruby linked list example
class Node
  attr_accessor :val, :next

  def initialize(val=nil, next_node=nil)
    @val = val
    @next = next_node
  end
end

# Double linked
class DoubleNode
  attr_accessor :val, :next, :prev

  def initialize(val=nil, next_node=nil, prev_node=nil)
    @val = val
    @next = next_node
    @prev = prev_node
  end
end

# make a singly linked list
root = Node.new(0)
active = root
5.times do |n|
  active.next = Node.new(n+1)
  active = active.next
end

puts root.inspect

# make a double!
dbl_root = DoubleNode.new(0)
dbl_active = dbl_root
5.times do |n|
  dbl_active.next = DoubleNode.new(n+1, nil, dbl_active)
  dbl_active = dbl_active.next
end

puts dbl_root.inspect
