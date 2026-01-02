class Greeter
    def initialize(name)
        @name = name
    end
    
    def greet
        "Hello, #{@name}!"
    end
end
    
if __FILE__ == $0
    greeter = Greeter.new("World")
    puts greeter.greet
end