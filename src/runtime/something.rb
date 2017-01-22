class YesSomething < YesObject
  attr_reader :runtime_methods

  def initialize
    @runtime_methods = {}
    @runtime_class   = Constants["Something"]
  end

  def lookup(method_name)
    method = @runtime_methods[method_name]
    raise "Method not found #{method_name}" if method.nil?
    method
  end

  def func(name, &block)
    @runtime_methods[name.to_s] = block
  end

  def new
    YesObject.new(self)
  end

  def new_with_value(value)
    YesObject.new(self, value)
  end
end
