def prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n.even?
  (3..Math.sqrt(n).to_i).step(2).none? { |i| n % i == 0 }
end

def primes_up_to(n)
  (2..n).select { |i| prime?(i) }
end

def prime_factors(n)
  factors = []
  d = 2
  while n > 1
    while n % d == 0
      factors << d
      n /= d
    end
    d += 1
  end
  factors
end

puts "Prime check: 17=#{prime?(17)}, 18=#{prime?(18)}, 2=#{prime?(2)}"
puts "Primes up to 30: #{primes_up_to(30)}"
puts "Prime factors(84): #{prime_factors(84)}"
puts "Prime factors(100): #{prime_factors(100)}"
