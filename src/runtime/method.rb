class YesMethod
  def initialize(params, body)
    @params = params
    @body   = body
  end

  def call(receiver, arguments)
    context = Context.new(receiver)

    @params.each_with_index do |params, index|
      context.locals[params] = arguments[index]
    end

    @body.eval(context)
  end
end
