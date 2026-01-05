def create_user(name:, email:, age: 18, admin: false)
  {name: name, email: email, age: age, admin: admin}
end

def greet(message, to:, from: "Anonymous")
  "#{message} - To: #{to}, From: #{from}"
end

def configure(host: "localhost", port: 8080, ssl: false, **extras)
  config = {host: host, port: port, ssl: ssl}
  config.merge(extras)
end

user1 = create_user(name: "Alice", email: "alice@test.com")
user2 = create_user(name: "Bob", email: "bob@test.com", age: 30, admin: true)

puts user1
puts user2

puts greet("Hello", to: "World")
puts greet("Hi", to: "Ruby", from: "Developer")

config = configure(port: 3000, ssl: true, timeout: 30, retries: 3)
puts config
