class Nodes < Struct.new(:nodes)
  def <<(node)
    nodes << node
    self
  end
end

class LiteralNode < Struct.new(:value); end
class NumberNode < LiteralNode; end
class StringNode < LiteralNode; end

class YesNode < LiteralNode
  def initialize
    super(true)
  end
end

class NoNode < LiteralNode
  def initialize
    super(false)
  end
end

class NothingNode < LiteralNode
  def initialize
    super(nil)
  end
end

class CallNode < Struct.new(:receiver, :method, :arguments); end
class GetConstantNode < Struct.new(:name); end
class SetConstantNode < Struct.new(:name, :value); end
class GetLocalNode < Struct.new(:name); end
class SetLocalNode < Struct.new(:name, :value); end
class FuncNode < Struct.new(:name, :params, :body); end
class ClassNode < Struct.new(:name, :body); end
class IfNode < Struct.new(:condition, :body); end
class WhileNode < Struct.new(:condition, :body); end
class SomethingNode < Struct.new(:name, :body); end
