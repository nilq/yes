require "parser"
require "runtime"

class Interpreter
  def initialize
    @parser = Parser.new
  end

  def eval(code)
    @parser.parse(code).eval(RootContext)
  end
end

class Nodes
  def eval(context)
    return_value = nil
    nodes.each do |node|
      return_value = node.eval(context)
    end
    return_value || Constants["nothing"]
  end
end

class NumberNode
  def eval(context)
    Constants["Number"].new_with_value(value)
  end
end

class StringNode
  def eval(context)
    Constants["String"].new_with_value(value)
  end
end

class NoNode
  def eval(context)
    Constants["no"]
  end
end

class YesNode
  def eval(context)
    Constants["yes"]
  end
end

class NothingNode
  def eval(context)
    Constants["nothing"]
  end
end

class GetConstantNode
  def eval(context)
    Constants[name]
  end
end

class GetLocalNode
  def eval(context)
    context.locals[name]
  end
end

class SetConstantNode
  def eval(context)
    Constants[name] = value.eval(context)
  end
end

class SetLocalNode
  def eval(context)
    context.locals[name] = value.eval(context)
  end
end

class CallNode
  def eval(context)
    if receiver
      value = receiver.eval(context)
    else
      value = context.current_self
    end

    evaluated_arguments = arguments.map { |arg| arg.eval(context) }
    value.call(method, evaluated_arguments)
  end
end

class FuncNode
  def eval(context)
    method = YesMethod.new(params, body)
    context.current_class.runtime_methods[name] = method
  end
end

class SomethingNode
  def eval(context)
    yes_class = Constants[name]

    unless yes_class
      yes_class = YesSomething.new
      Constants[name] = yes_class
    end

    class_context = Context.new(yes_class, yes_class)
    body.eval(class_context)

    yes_class
  end
end

class IfNode
  def eval(context)
    if condition.eval(context).ruby_value
      body.eval(context)
    else
      Constants["nothing"]
    end
  end
end
