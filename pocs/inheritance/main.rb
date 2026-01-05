class Animal
  attr_reader :name
  def initialize(name) = @name = name
  def speak = raise NotImplementedError
  def info = "I am #{name}"
end

class Dog < Animal
  def speak = "#{name} says Woof!"
  def fetch = "#{name} fetches the ball"
end

class Cat < Animal
  def speak = "#{name} says Meow!"
  def scratch = "#{name} scratches"
end

class Labrador < Dog
  def speak = "#{super} (loudly)"
end

animals = [Dog.new("Rex"), Cat.new("Whiskers"), Labrador.new("Buddy")]

animals.each do |animal|
  puts animal.info
  puts animal.speak
  puts animal.fetch if animal.respond_to?(:fetch)
  puts animal.scratch if animal.respond_to?(:scratch)
  puts "---"
end
