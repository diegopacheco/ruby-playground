puts "=== while loop ==="
i = 0
while i < 3 do puts "while: #{i}"; i += 1 end

puts "=== until loop ==="
j = 0
until j >= 3 do puts "until: #{j}"; j += 1 end

puts "=== for loop ==="
for n in [1, 2, 3] do puts "for: #{n}" end

puts "=== loop with break ==="
k = 0
loop do puts "loop: #{k}"; k += 1; break if k >= 3 end

puts "=== each with next ==="
[1, 2, 3, 4, 5].each { |x| next if x.even?; puts "odd: #{x}" }

puts "=== upto/downto ==="
1.upto(3) { |n| puts "upto: #{n}" }
3.downto(1) { |n| puts "downto: #{n}" }

puts "=== step ==="
0.step(10, 2) { |n| print "#{n} " }
puts
