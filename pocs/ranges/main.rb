nums = (1..10)
nums_exclusive = (1...10)

puts "Inclusive: #{nums.to_a}"
puts "Exclusive: #{nums_exclusive.to_a}"
puts "Sum: #{nums.sum}"
puts "Contains 5? #{nums.include?(5)}"
puts "Contains 15? #{nums.include?(15)}"

letters = ('a'..'f')
puts "Letters: #{letters.to_a}"

puts "First 3: #{nums.first(3)}"
puts "Last 3: #{nums.last(3)}"

age = 25
case age
when 0..12 then puts "Child"
when 13..19 then puts "Teen"
when 20..64 then puts "Adult"
else puts "Senior"
end

endless = (1..)
puts "Endless first 5: #{endless.first(5)}"
