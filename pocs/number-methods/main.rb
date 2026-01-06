n = 42
f = 3.14159

puts "Integer methods:"
puts "#{n}.even? = #{n.even?}"
puts "#{n}.odd? = #{n.odd?}"
puts "#{n}.positive? = #{n.positive?}"
puts "#{n}.negative? = #{(-n).negative?}"
puts "#{n}.zero? = #{0.zero?}"
puts "#{n}.between?(40, 50) = #{n.between?(40, 50)}"
puts "#{n}.abs = #{(-n).abs}"
puts "#{n}.digits = #{12345.digits}"
puts "#{n}.to_s(2) = #{n.to_s(2)} (binary)"
puts "#{n}.to_s(16) = #{n.to_s(16)} (hex)"

puts "\nFloat methods:"
puts "#{f}.round = #{f.round}"
puts "#{f}.round(2) = #{f.round(2)}"
puts "#{f}.floor = #{f.floor}"
puts "#{f}.ceil = #{f.ceil}"
puts "#{f}.truncate = #{f.truncate}"
puts "#{f}.finite? = #{f.finite?}"
puts "#{f}.nan? = #{(0.0/0).nan?}"
puts "#{f}.infinite? = #{(1.0/0).infinite?}"

puts "\nNumeric operations:"
puts "10.divmod(3) = #{10.divmod(3)}"
puts "10.gcd(15) = #{10.gcd(15)}"
puts "10.lcm(15) = #{10.lcm(15)}"
