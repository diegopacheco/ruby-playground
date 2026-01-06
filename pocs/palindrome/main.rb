def palindrome?(str)
  clean = str.downcase.gsub(/[^a-z0-9]/, '')
  clean == clean.reverse
end

def palindrome_number?(n)
  s = n.to_s
  s == s.reverse
end

def longest_palindrome(str)
  return str if str.length <= 1
  longest = ""
  (0...str.length).each do |i|
    (i...str.length).each do |j|
      sub = str[i..j]
      longest = sub if sub == sub.reverse && sub.length > longest.length
    end
  end
  longest
end

words = ["radar", "hello", "level", "world", "civic", "ruby"]
words.each { |w| puts "#{w}: #{palindrome?(w)}" }
puts "---"
puts "'A man a plan a canal Panama': #{palindrome?('A man a plan a canal Panama')}"
puts "12321 is palindrome: #{palindrome_number?(12321)}"
puts "12345 is palindrome: #{palindrome_number?(12345)}"
puts "Longest in 'abracadabra': #{longest_palindrome('abracadabra')}"
