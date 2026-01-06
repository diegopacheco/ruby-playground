puts "Random float (0-1): #{rand}"
puts "Random int (0-99): #{rand(100)}"
puts "Random range (10-20): #{rand(10..20)}"
puts "Random float range: #{rand(1.5..3.5)}"

rng = Random.new(42)
puts "Seeded random: #{rng.rand(100)}, #{rng.rand(100)}, #{rng.rand(100)}"

arr = [1, 2, 3, 4, 5]
puts "Sample: #{arr.sample}"
puts "Sample(3): #{arr.sample(3)}"
puts "Shuffle: #{arr.shuffle}"

chars = ('a'..'z').to_a
puts "Random string: #{chars.sample(8).join}"

puts "Random hex: #{SecureRandom.hex(8)}" if require 'securerandom'
puts "Random UUID: #{SecureRandom.uuid}"
puts "Random base64: #{SecureRandom.base64(12)}"

weights = {apple: 0.5, banana: 0.3, cherry: 0.2}
total = weights.values.sum
r = rand * total
result = weights.find { |_, w| (r -= w) < 0 }&.first
puts "Weighted random: #{result}"
