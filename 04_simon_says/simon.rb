def echo s
  s
end

def shout s
  s.upcase
end

#def repeat(s)
#  s + " " + s
#end

def repeat(s, *number)
  if (number.empty?)
    s + " " + s
  else
    s=(s+" ")*number[0]
    s=s[0...-1]
  end
end

def start_of_word(s, num)
  s[0,num]
end

def first_word s
  split = s.split
  split[0]
end

def capitalize(s)
  s.capitalize!
end

def titleize(s)
  split = s.split
  new_word = Array.new()
  split.each_with_index {|x, y|
    new_word[y] = x.capitalize!
    }
  new_word.join(" ")
end


