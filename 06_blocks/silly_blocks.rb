def reverser
  yield.split.map {|w|
    w.reverse
  }.join(" ")
end

def adder(x = 1)
  yield+x
end

def repeater(x=1)
  x.times {yield}
end

