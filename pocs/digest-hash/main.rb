require 'digest'

text = "Hello, Ruby!"
password = "secret123"

md5 = Digest::MD5.hexdigest(text)
sha1 = Digest::SHA1.hexdigest(text)
sha256 = Digest::SHA256.hexdigest(text)
sha512 = Digest::SHA512.hexdigest(text)

puts "Text: #{text}"
puts "MD5: #{md5}"
puts "SHA1: #{sha1}"
puts "SHA256: #{sha256}"
puts "SHA512: #{sha512[0..63]}..."

salted = "#{password}:random_salt_123"
hashed_password = Digest::SHA256.hexdigest(salted)
puts "Salted password hash: #{hashed_password}"

file_content = "file content here"
file_hash = Digest::SHA256.hexdigest(file_content)
puts "File checksum: #{file_hash}"

puts "MD5 match? #{md5 == Digest::MD5.hexdigest(text)}"
