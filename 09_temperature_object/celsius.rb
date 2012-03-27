class Celsius

  def initialize c
    put "Celsius init:#{c}"
    @c = c
  end

  def in_celsius
    @c
  end

  def in_fahrenheit
    (@c * 9.0/5) + 32
  end
end
