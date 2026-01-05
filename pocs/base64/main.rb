require 'base64'

text = "Hello, Ruby World!"
binary_data = [0x48, 0x65, 0x6c, 0x6c, 0x6f].pack('C*')

encoded = Base64.encode64(text)
decoded = Base64.decode64(encoded)

puts "Original: #{text}"
puts "Encoded: #{encoded}"
puts "Decoded: #{decoded}"

strict_encoded = Base64.strict_encode64(text)
puts "Strict encoded: #{strict_encoded}"

url_safe = Base64.urlsafe_encode64("data with special chars: +/=")
puts "URL safe: #{url_safe}"
puts "URL decoded: #{Base64.urlsafe_decode64(url_safe)}"

json_like = {name: "Alice", data: Base64.strict_encode64("binary content")}
puts "JSON with base64: #{json_like}"

binary_encoded = Base64.strict_encode64(binary_data)
puts "Binary encoded: #{binary_encoded}"
