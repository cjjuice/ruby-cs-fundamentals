class Trie < Hash
  def initialize
    super
  end

  def construct(string)
    string.chars.inject(self) {|memo ,char| memo[char] ||= {} }
  end
end

trie = Trie.new
trie.construct('hello')
puts trie.inspect
# {"h"=>{"e"=>{"l"=>{"l"=>{"o"=>{}}}}}}
