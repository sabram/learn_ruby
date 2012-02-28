def hello(who = nil)
  if who.nil?
    "Hello!"
  else
    "Hello, #{who}!"
  end
end
