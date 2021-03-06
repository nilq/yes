Constants = {}

Constants["Something"] = YesSomething.new
Constants["Something"].runtime_class = Constants["Something"]

Constants["Object"] = YesSomething.new

Constants["Number"] = YesSomething.new

Constants["Number"].func :+ do |receiver, arguments|
  result = receiver.ruby_value + arguments.first.ruby_value
  Constants["Number"].new_with_value(result)
end

Constants["Number"].func :- do |receiver, arguments|
  result = receiver.ruby_value - arguments.first.ruby_value
  Constants["Number"].new_with_value(result)
end

Constants["Number"].func :* do |receiver, arguments|
  result = receiver.ruby_value * arguments.first.ruby_value
  Constants["Number"].new_with_value(result)
end

Constants["Number"].func :/ do |receiver, arguments|
  result = receiver.ruby_value / arguments.first.ruby_value
  Constants["Number"].new_with_value(result)
end

Constants["String"] = YesSomething.new

Constants["String"].func :+ do |receiver, arguments|
  result = receiver.ruby_value + arguments.first.ruby_value
  Constants["String"].new_with_value(result)
end

root_self = Constants["Object"].new
RootContext = Context.new(root_self)

Constants["YesClass"] = YesSomething.new
Constants["NoClass"]  = YesSomething.new
Constants["NothingClass"] = YesSomething.new

Constants["yes"] = Constants["YesClass"].new_with_value(true)
Constants["no"]  = Constants["NoClass"].new_with_value(false)
Constants["nothing"] = Constants["NothingClass"].new_with_value(nil)

Constants["Something"].func :new do |receiver, arguments|
  receiver.new
end

Constants["Object"].func :print do |receiver, arguments|
  puts arguments.first.ruby_value
  Constants["nothing"]
end
