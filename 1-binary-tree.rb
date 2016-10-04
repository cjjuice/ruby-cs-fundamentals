class TreeNode
  include Enumerable
  attr_accessor :val, :left, :right

  def initialize(opts={})
    opts.each {|k,v| instance_variable_set("@#{k}",v)}
  end

  def each(&block)
    left.each(&block) if left
    block.call(self)
    right.each(&block) if right
  end

  def insert(val)
    case @val <=> val
    when 1
      @left = TreeNode.new({val: val})
    when 0
      self
    when -1
      @right = TreeNode.new({val: val})
    end
  end
end

# create a binary search tree given random values
random_nums = []
5.times { random_nums << rand(1000) }

# shift the array; returns first el
root = TreeNode.new({val: random_nums.shift})
active = root

random_nums.each_with_index do |n,i|
  new_node = active.insert(n)
  active = new_node
end

puts root.inspect

# TODO: balance this ish
