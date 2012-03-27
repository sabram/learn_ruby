class Temperature

  def initialize(my_hash = {})
    f = my_hash[:f]
    c = my_hash[:c]
    puts "f=#{f}, c=#{c}"
    if (f != nil)
      puts "using f"
      @temp_in_f = f
    elsif (c != nil)
      puts "using c"
      @temp_in_f = (c * 9.0/5) + 32
    else
      puts "Need c or f!"
    end
  end

  def in_fahrenheit
    @temp_in_f
  end

  def in_celsius
    (@temp_in_f-32) * 5/9
  end

  def self.from_celsius c
    Temperature.new(:c => c)
  end

  def self.from_fahrenheit f
    Temperature.new(:f => f)
  end

  def self.ftoc f

  end

  def self.ctof c

  end
end

class Celsius < Temperature

  def initialize c
    puts "Celsius init:#{c}"
    @c = c
  end

  def in_celsius
    @c
  end

  def in_fahrenheit
    (@c * 9.0/5) + 32
  end
end
