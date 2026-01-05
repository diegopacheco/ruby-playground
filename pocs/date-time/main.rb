require 'date'

now = Time.now
today = Date.today

puts "Time now: #{now}"
puts "Date today: #{today}"
puts "Year: #{today.year}, Month: #{today.month}, Day: #{today.day}"
puts "Day of week: #{today.strftime('%A')}"
puts "Formatted: #{now.strftime('%Y-%m-%d %H:%M:%S')}"

future = today + 30
past = today - 7
puts "30 days from now: #{future}"
puts "7 days ago: #{past}"

parsed = Date.parse("2024-12-25")
puts "Christmas 2024: #{parsed}"
puts "Days until: #{(parsed - today).to_i}"

datetime = DateTime.new(2024, 6, 15, 14, 30, 0)
puts "DateTime: #{datetime}"
puts "ISO8601: #{datetime.iso8601}"
