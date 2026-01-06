class FlexibleHash
  def initialize
    @data = {}
  end

  def method_missing(name, *args)
    key = name.to_s
    if key.end_with?('=')
      @data[key.chomp('=')] = args.first
    else
      @data[key]
    end
  end

  def respond_to_missing?(name, include_private = false)
    true
  end

  def to_s
    @data.to_s
  end
end

obj = FlexibleHash.new
obj.name = "Alice"
obj.age = 30
obj.city = "NYC"
puts "Name: #{obj.name}"
puts "Age: #{obj.age}"
puts "Data: #{obj}"
