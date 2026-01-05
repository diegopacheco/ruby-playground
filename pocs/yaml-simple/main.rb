require 'yaml'

config = {
  database: {host: "localhost", port: 5432, name: "mydb"},
  cache: {enabled: true, ttl: 3600},
  features: ["auth", "logging", "metrics"]
}

yaml_string = config.to_yaml
puts "YAML output:"
puts yaml_string

parsed = YAML.safe_load(yaml_string, permitted_classes: [Symbol], permitted_symbols: [], aliases: true)
puts "Parsed back: #{parsed}"

yaml_content = <<~YAML
  server:
    host: 0.0.0.0
    port: 8080
  users:
    - name: alice
      role: admin
    - name: bob
      role: user
YAML

data = YAML.safe_load(yaml_content)
puts "Server host: #{data['server']['host']}"
puts "First user: #{data['users'][0]['name']}"
