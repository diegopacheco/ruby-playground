puts "HOME: #{ENV['HOME']}"
puts "USER: #{ENV['USER']}"
puts "PATH exists: #{ENV.key?('PATH')}"
puts "SHELL: #{ENV.fetch('SHELL', 'unknown')}"

ENV['MY_VAR'] = 'hello_ruby'
puts "MY_VAR: #{ENV['MY_VAR']}"

puts "UNDEFINED with default: #{ENV.fetch('UNDEFINED_VAR', 'default_value')}"

env_vars = ENV.select { |k, _| k.start_with?('LANG') || k.start_with?('LC_') }
puts "Language vars: #{env_vars.keys}"

puts "Total env vars: #{ENV.size}"

important = %w[HOME USER SHELL PWD]
important.each { |k| puts "#{k}=#{ENV[k]}" }

ENV['TEMP_VAR'] = 'temporary'
puts "TEMP_VAR before delete: #{ENV['TEMP_VAR']}"
ENV.delete('TEMP_VAR')
puts "TEMP_VAR after delete: #{ENV['TEMP_VAR'].inspect}"

puts "Ruby version: #{ENV['RUBY_VERSION'] || RUBY_VERSION}"
