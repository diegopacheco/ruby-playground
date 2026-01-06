def grade(score)
  case score
  when 90..100 then "A"
  when 80...90 then "B"
  when 70...80 then "C"
  when 60...70 then "D"
  else "F"
  end
end

def type_check(obj)
  case obj
  when Integer then "Integer: #{obj}"
  when String then "String: #{obj}"
  when Array then "Array with #{obj.length} elements"
  when Hash then "Hash with keys: #{obj.keys}"
  when nil then "Nil value"
  else "Unknown type: #{obj.class}"
  end
end

[95, 85, 75, 65, 55].each { |s| puts "Score #{s}: #{grade(s)}" }
puts "---"
[42, "hello", [1, 2], {a: 1}, nil, 3.14].each { |o| puts type_check(o) }
