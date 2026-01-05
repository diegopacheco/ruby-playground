email = "user@domain.com"
phone = "555-123-4567"
text = "The quick brown fox jumps over 3 lazy dogs"

puts "Valid email? #{email.match?(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)}"
puts "Phone parts: #{phone.scan(/\d+/)}"

if text =~ /(\w+) fox.*?(\d+)/
  puts "Matched: animal before fox='#{$1}', number='#{$2}'"
end

puts text.gsub(/\b\w{4}\b/, "XXXX")

words = "hello   world    ruby"
puts words.split(/\s+/)

url = "https://api.example.com/v1/users"
url.match(%r{https?://(?<host>[^/]+)/(?<path>.+)}) do |m|
  puts "Host: #{m[:host]}, Path: #{m[:path]}"
end
