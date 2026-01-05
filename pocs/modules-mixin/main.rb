module Walkable
  def walk
    "#{name} is walking"
  end
end

module Swimmable
  def swim
    "#{name} is swimming"
  end
end

module Flyable
  def fly
    "#{name} is flying"
  end
end

class Duck
  include Walkable, Swimmable, Flyable
  attr_reader :name
  def initialize(name) = @name = name
end

class Fish
  include Swimmable
  attr_reader :name
  def initialize(name) = @name = name
end

duck = Duck.new("Donald")
fish = Fish.new("Nemo")

puts duck.walk
puts duck.swim
puts duck.fly
puts fish.swim
