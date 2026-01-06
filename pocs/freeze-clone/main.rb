original = "Hello, Ruby!"
frozen = original.freeze

puts "Original: #{original}"
puts "Frozen? #{frozen.frozen?}"

begin
  frozen << " More"
rescue FrozenError => e
  puts "Cannot modify frozen: #{e.message}"
end

arr = [1, 2, [3, 4]]
shallow = arr.clone
deep = arr.map { |e| e.is_a?(Array) ? e.dup : e }

arr[0] = 100
arr[2][0] = 300
puts "Original: #{arr}"
puts "Shallow clone: #{shallow}"
puts "Deep copy: #{deep}"

obj = {name: "test", data: [1, 2, 3]}
frozen_obj = obj.freeze
puts "Hash frozen: #{frozen_obj.frozen?}"
puts "Nested array frozen: #{frozen_obj[:data].frozen?}"

mutable = "can change"
mutable.upcase!
puts "After upcase!: #{mutable}"
