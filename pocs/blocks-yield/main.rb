def with_timing
  start = Time.now
  result = yield
  elapsed = Time.now - start
  puts "Elapsed: #{elapsed}s"
  result
end

def repeat(n)
  n.times { |i| yield(i) }
end

def transform(value)
  yield(value) if block_given?
end

with_timing { sleep(0.1); puts "Task done" }

repeat(3) { |i| puts "Iteration #{i}" }

puts transform(10) { |x| x * 2 }
puts transform(5)
