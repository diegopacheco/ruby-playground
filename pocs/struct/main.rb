Person = Struct.new(:name, :age, :city) do
  def greet
    "Hi, I'm #{name} from #{city}"
  end

  def adult?
    age >= 18
  end
end

alice = Person.new("Alice", 30, "NYC")
bob = Person.new("Bob", 16, "LA")

puts alice.greet
puts "Alice adult? #{alice.adult?}"
puts bob.greet
puts "Bob adult? #{bob.adult?}"

puts alice.to_h
puts alice.members
