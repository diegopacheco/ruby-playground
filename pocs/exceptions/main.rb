class CustomError < StandardError; end

def risky_operation(value)
  raise ArgumentError, "Negative not allowed" if value < 0
  raise CustomError, "Too large" if value > 100
  value * 2
end

def safe_divide(a, b)
  a / b
rescue ZeroDivisionError
  puts "Cannot divide by zero"
  nil
end

[10, -5, 150, 50].each do |n|
  begin
    result = risky_operation(n)
    puts "Result for #{n}: #{result}"
  rescue ArgumentError, CustomError => e
    puts "Error for #{n}: #{e.message}"
  ensure
    puts "Processed #{n}"
  end
end

puts "10 / 2 = #{safe_divide(10, 2)}"
puts "10 / 0 = #{safe_divide(10, 0)}"
