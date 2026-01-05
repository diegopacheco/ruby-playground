filename = "/tmp/ruby_test.txt"

File.write(filename, "Line 1\nLine 2\nLine 3\n")
puts "File written"

content = File.read(filename)
puts "Content:\n#{content}"

File.open(filename, "a") { |f| f.puts "Line 4" }

File.foreach(filename).with_index(1) { |line, num|
  puts "#{num}: #{line.chomp}"
}

puts "Exists? #{File.exist?(filename)}"
puts "Size: #{File.size(filename)} bytes"
puts "Directory: #{File.dirname(filename)}"
puts "Basename: #{File.basename(filename)}"

File.delete(filename)
puts "File deleted"
