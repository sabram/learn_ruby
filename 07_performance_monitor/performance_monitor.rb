def measure(n = 1)
  start_time = Time.now
  puts "start_time = #{start_time}"
  n.times{yield}
  end_time = Time.now
  puts "end_time = #{end_time}"
  total_time = end_time - start_time
  puts total_time
  return total_time / n
end
