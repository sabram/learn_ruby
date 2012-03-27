class Temperature

  def initialize(my_hash = {})
    f = my_hash[:f]
    c = my_hash[:c]
    #puts "f=#{f}, c=#{c}"
    if (f != nil)
      #puts "using f"
      @temp_in_f = f
    elsif (c != nil)
      #puts "using c"
      @temp_in_f = (c * 9.0/5) + 32
    else
      puts "Need c or f!"
    end
  end


  def self.ftoc f
    (f-32) * 5/9
  end

  def self.ctof c
    (c * 9.0/5) + 32
  end


  def in_fahrenheit
    @temp_in_f
  end

  def in_celsius
    Temperature.ftoc  @temp_in_f
  end

  def self.from_celsius c
    Temperature.new(:c => c)
  end

  def self.from_fahrenheit f
    Temperature.new(:f => f)
  end

end

class Celsius < Temperature

  def initialize c
    @c = c
  end

  def in_celsius
    @c
  end

  def in_fahrenheit
    Temperature.ctof @c
  end
end

class Fahrenheit < Temperature

  def initialize f
    @f = f
  end

  def in_celsius
    Temperature.ftoc @f
  end

  def in_fahrenheit
    @f
  end
end
