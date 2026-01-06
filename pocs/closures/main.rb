def counter
  count = 0
  -> { count += 1 }
end

c1 = counter
c2 = counter
puts "c1: #{c1.call}, #{c1.call}, #{c1.call}"
puts "c2: #{c2.call}, #{c2.call}"

def multiplier(factor)
  ->(x) { x * factor }
end

double = multiplier(2)
triple = multiplier(3)
puts "Double 5: #{double.call(5)}"
puts "Triple 5: #{triple.call(5)}"

def accumulator(initial = 0)
  total = initial
  {add: ->(n) { total += n }, value: -> { total }}
end

acc = accumulator(100)
acc[:add].call(50)
puts "Accumulator value: #{acc[:value].call}"
