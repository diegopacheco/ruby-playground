require 'ostruct'

person = OpenStruct.new(name: "Alice", age: 30, city: "NYC")
puts "Name: #{person.name}"
puts "Age: #{person.age}"
puts "City: #{person.city}"

person.email = "alice@test.com"
person.active = true
puts "Email: #{person.email}"
puts "Active: #{person.active}"

config = OpenStruct.new(
  database: OpenStruct.new(host: "localhost", port: 5432),
  cache: OpenStruct.new(enabled: true, ttl: 3600)
)
puts "DB Host: #{config.database.host}"
puts "Cache TTL: #{config.cache.ttl}"

hash = {name: "Bob", role: "admin"}
user = OpenStruct.new(hash)
puts "User: #{user.name}, Role: #{user.role}"
puts "To hash: #{user.to_h}"

puts "Respond to name? #{person.respond_to?(:name)}"
puts "Respond to unknown? #{person.respond_to?(:unknown)}"
