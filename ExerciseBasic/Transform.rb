class Transform 
    def initialize(string)
        @string = string;
    end

    def uppercase()
        @string.upcase;
    end
    #class methods do not have access to instance variables 
    #lowercase must obtain the string to convert from some source other 
    #than an isntance variable
    def self.lowercase(string_input)
        string_input.downcase;
    end 
end

myString = Transform.new("abc");

puts myString.uppercase;

puts Transform.lowercase("ZXR");

class SayHello 
    def sayHelloBYInstanceMethod
        "Hello from an instance method";        
    end

    def self.sayHelloFromClassMethod
        "Hello from class method";
    end
end
#call methods from class
puts SayHello.sayHelloFromClassMethod;

#call methods from instance 
myHello = SayHello.new();
puts myHello.sayHelloBYInstanceMethod;