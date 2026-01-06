def factorial_recursive(n)
  return 1 if n <= 1
  n * factorial_recursive(n - 1)
end

def factorial_iterative(n)
  result = 1
  (2..n).each { |i| result *= i }
  result
end

def factorial_reduce(n)
  (1..n).reduce(1, :*)
end

def factorial_inject(n)
  (1..n).inject(:*) || 1
end

puts "Factorial recursive(5): #{factorial_recursive(5)}"
puts "Factorial iterative(5): #{factorial_iterative(5)}"
puts "Factorial reduce(5): #{factorial_reduce(5)}"
puts "Factorial inject(5): #{factorial_inject(5)}"
puts "Factorial(10): #{factorial_reduce(10)}"
puts "Factorial(15): #{factorial_reduce(15)}"
puts "Factorial(20): #{factorial_reduce(20)}"
