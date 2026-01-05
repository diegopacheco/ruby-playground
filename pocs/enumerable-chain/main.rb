numbers = (1..20).to_a

result = numbers
  .select { |n| n.even? }
  .map { |n| n * n }
  .reject { |n| n > 100 }
  .reduce(0, :+)

puts "Sum of squares of evens <= 100: #{result}"

words = ["apple", "banana", "cherry", "date", "elderberry"]
grouped = words.group_by { |w| w.length }
puts "Grouped by length: #{grouped}"

data = [{name: "Alice", score: 85}, {name: "Bob", score: 92}, {name: "Charlie", score: 78}]
top = data.max_by { |d| d[:score] }
puts "Top scorer: #{top[:name]}"

partitioned = (1..10).partition(&:even?)
puts "Evens: #{partitioned[0]}, Odds: #{partitioned[1]}"

zipped = [1, 2, 3].zip(["a", "b", "c"], [:x, :y, :z])
puts "Zipped: #{zipped}"

puts "Any > 15? #{numbers.any? { |n| n > 15 }}"
puts "All positive? #{numbers.all?(&:positive?)}"
puts "First even: #{numbers.find(&:even?)}"
