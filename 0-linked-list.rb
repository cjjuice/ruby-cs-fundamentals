# ruby linked list example
class Node
  attr_accessor :val, :next

  def initialize(opts={})
    opts.each { |k,v| instance_variable_set("@#{k}", v) }
  end

end

# Double linked
class DoubleNode < Node
  attr_accessor :prev

  def delete
    if self.next && self.prev
      self.next.prev = self.prev
      self.prev.next = self.next
    elsif self.prev
      self.prev.next = nil
    elsif self.next
      self.next.prev = nil
    end
  end
end

# make a singly linked list
root = Node.new({val: 0})
active = root
5.times do |n|
  active.next = Node.new({val: n+1})
  active = active.next
end

puts root.inspect

# make a double!
dbl_root = DoubleNode.new({val: 0})
dbl_active = dbl_root
5.times do |n|
  dbl_active.next = DoubleNode.new({val: n+1, prev: dbl_active})
  dbl_active = dbl_active.next
end

puts dbl_root.inspect

# delete 2nd node
dbl_root.next.delete
# root now points to 3rd
puts dbl_root.inspect
