puts "Script name: #{$0}"
puts "Argument count: #{ARGV.length}"
puts "Arguments: #{ARGV}"

if ARGV.empty?
  puts "No arguments provided, using defaults"
  args = ["hello", "world", "42"]
else
  args = ARGV.dup
end

puts "First arg: #{args[0]}"
puts "All args joined: #{args.join(', ')}"

options = {}
args.each_with_index do |arg, i|
  if arg.start_with?('--')
    key = arg[2..].to_sym
    options[key] = args[i + 1] unless args[i + 1]&.start_with?('--')
  end
end
puts "Parsed options: #{options}" unless options.empty?

numeric_args = args.select { |a| a.match?(/^\d+$/) }.map(&:to_i)
puts "Numeric args: #{numeric_args}"

puts "Contains 'hello': #{args.include?('hello')}"
puts "ARGV frozen: #{ARGV.frozen?}"
