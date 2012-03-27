
def add (a, b)
  a+b
end

def subtract (a, b)
  a-b
end

def multiplies (a, b, *num)
  result = a*b
  num.each {|x| result = result * x }
  result
end

def sum array
  total = 0
  array.each { |x| total = total + x }
  return total
end

def factorial x

end
