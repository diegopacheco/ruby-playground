def fib_recursive(n)
  return n if n <= 1
  fib_recursive(n - 1) + fib_recursive(n - 2)
end

def fib_iterative(n)
  return n if n <= 1
  a, b = 0, 1
  (n - 1).times { a, b = b, a + b }
  b
end

def fib_memo(n, memo = {})
  return n if n <= 1
  memo[n] ||= fib_memo(n - 1, memo) + fib_memo(n - 2, memo)
end

def fib_sequence(n)
  (0...n).map { |i| fib_iterative(i) }
end

puts "Fibonacci recursive(10): #{fib_recursive(10)}"
puts "Fibonacci iterative(10): #{fib_iterative(10)}"
puts "Fibonacci memoized(10): #{fib_memo(10)}"
puts "Fibonacci sequence(15): #{fib_sequence(15)}"
puts "Fibonacci iterative(30): #{fib_iterative(30)}"
