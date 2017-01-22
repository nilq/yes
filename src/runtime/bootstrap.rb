Constants = {}

Constants["Something"] = YesClass.new
Constants["Something"].runtime_class = Constants["Something"]

Constants["Object"] = YesClass.new
Constants["Number"] = YesClass.new
Constants["String"] = YesClass.new

root_self = Constants["Object"].new
RootContext = Context.new(root_self)

Constants["YesClass"] = YesClass.new
Constants["NoClass"]  = YesClass.new
Constants["NothingClass"] = YesClass.new

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
