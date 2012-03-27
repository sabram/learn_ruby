
class Book
  def initialize
    @dont_cap = ["the", "an", "a", "and", "in"]
  end
  def title
    i=-1;
    @title.split.map {|w|
      i+=1
      if (i==0 or !@dont_cap.include?w)
        w.capitalize
      else
        w
      end

      }.join(" ")
  end

  def title=(title)
    @title = title
  end
end