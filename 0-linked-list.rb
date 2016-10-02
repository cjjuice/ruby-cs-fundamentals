# ruby linked list example
class Node
  attr_accessor :val, :next

  def initialize(val=nil, next_node=nil)
    @val = val
    @next = next_node
  end
end

root = Node.new(0)
active = root
5.times do |n|
  active.next = Node.new(n+1)
  active = active.next
end

puts root.inspect
