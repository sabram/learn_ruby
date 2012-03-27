class Friend
  def greeting(name = "")
    name = ", #{name}" if (name != "")
    "Hello#{name}!"
  end
end
