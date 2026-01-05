require 'set'

a = Set[1, 2, 3, 4, 5]
b = Set[4, 5, 6, 7, 8]

puts "Set A: #{a.to_a}"
puts "Set B: #{b.to_a}"
puts "Union: #{(a | b).to_a}"
puts "Intersection: #{(a & b).to_a}"
puts "Difference A-B: #{(a - b).to_a}"
puts "Symmetric Diff: #{(a ^ b).to_a}"

puts "A subset of B? #{a.subset?(b)}"
puts "A superset of [1,2]? #{a.superset?(Set[1, 2])}"

s = Set.new
s.add(1)
s << 2 << 3
s.merge([4, 5])
puts "Built set: #{s.to_a}"

puts "Contains 3? #{s.include?(3)}"
s.delete(3)
puts "After delete 3: #{s.to_a}"
