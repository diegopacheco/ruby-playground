matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

puts "Matrix:"
matrix.each { |row| puts row.inspect }
puts "\nElement at [1][2]: #{matrix[1][2]}"
puts "First row: #{matrix[0]}"
puts "First column: #{matrix.map { |r| r[0] }}"

transposed = matrix.transpose
puts "\nTransposed:"
transposed.each { |row| puts row.inspect }

doubled = matrix.map { |row| row.map { |x| x * 2 } }
puts "\nDoubled:"
doubled.each { |row| puts row.inspect }

puts "\nSum of all elements: #{matrix.flatten.sum}"
diagonal = (0...matrix.length).map { |i| matrix[i][i] }
puts "Main diagonal: #{diagonal}"
puts "Dimensions: #{matrix.length}x#{matrix[0].length}"
