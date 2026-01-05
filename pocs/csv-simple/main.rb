require 'csv'

csv_data = <<~CSV
  name,age,city
  Alice,30,NYC
  Bob,25,LA
  Charlie,35,Chicago
CSV

puts "Parsing CSV:"
CSV.parse(csv_data, headers: true).each do |row|
  puts "#{row['name']} is #{row['age']} from #{row['city']}"
end

users = [
  ["name", "email", "score"],
  ["Alice", "alice@test.com", 95],
  ["Bob", "bob@test.com", 87]
]

output = CSV.generate do |csv|
  users.each { |row| csv << row }
end
puts "\nGenerated CSV:\n#{output}"

CSV.parse(csv_data, headers: true).each do |row|
  row.to_h.then { |h| puts h }
end
