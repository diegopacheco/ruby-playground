threads = []
mutex = Mutex.new
counter = 0

5.times do |i|
  threads << Thread.new(i) do |num|
    sleep(rand * 0.1)
    mutex.synchronize { counter += 1 }
    puts "Thread #{num} done, counter=#{counter}"
  end
end

threads.each(&:join)
puts "Final counter: #{counter}"

queue = Queue.new
producer = Thread.new do
  5.times { |i| queue << i; sleep(0.01) }
  queue << :done
end

consumer = Thread.new do
  loop do
    item = queue.pop
    break if item == :done
    puts "Consumed: #{item}"
  end
end

[producer, consumer].each(&:join)
puts "Queue processing complete"
