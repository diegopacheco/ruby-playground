def fizzbuzz(n)
  (1..n).map do |i|
    if i % 15 == 0 then "FizzBuzz"
    elsif i % 3 == 0 then "Fizz"
    elsif i % 5 == 0 then "Buzz"
    else i
    end
  end
end

def fizzbuzz_hash(n)
  rules = {15 => "FizzBuzz", 3 => "Fizz", 5 => "Buzz"}
  (1..n).map { |i| rules.find { |k, _| i % k == 0 }&.last || i }
end

def fizzbuzz_ternary(n)
  (1..n).map { |i| (i % 3 == 0 ? "Fizz" : "") + (i % 5 == 0 ? "Buzz" : "") }.map.with_index(1) { |s, i| s.empty? ? i : s }
end

puts "FizzBuzz (1-20):"
puts fizzbuzz(20).join(", ")
puts ""
puts "FizzBuzz hash method (1-15):"
puts fizzbuzz_hash(15).join(", ")
puts ""
puts "FizzBuzz ternary (1-15):"
puts fizzbuzz_ternary(15).join(", ")
