require 'json'

class Person
    attr_accessor :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
    end
    
    def to_json(*_args)
        { name: @name, age: @age }.to_json
    end
    
    def self.from_json(string)
        data = JSON.parse(string)
        new(data['name'], data['age'])
    end
end
    
person = Person.new('Alice', 30)
json_string = person.to_json
puts json_string

new_person = Person.from_json(json_string)
puts "#{new_person.name}, #{new_person.age}"