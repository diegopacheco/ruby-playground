square = Proc.new { |x| x * x }
cube = ->(x) { x * x * x }

puts "Proc square(5): #{square.call(5)}"
puts "Lambda cube(3): #{cube.call(3)}"

adder = ->(a, b) { a + b }
puts "Lambda adder(10, 20): #{adder.(10, 20)}"

numbers = [1, 2, 3, 4, 5]
puts "Mapped with proc: #{numbers.map(&square)}"

multiplier = ->(factor) { ->(x) { x * factor } }
double = multiplier.call(2)
triple = multiplier.call(3)

puts "Double 7: #{double.call(7)}"
puts "Triple 7: #{triple.call(7)}"
