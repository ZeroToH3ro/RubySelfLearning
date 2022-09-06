class Transform 
    def initialize(string)
        @string = string;
    end

    def uppercase
        @string.upcase;
    end
    #class methods do not have access to instance variables 
    #lowercase must obtain the string to convert from some source other 
    #than an isntance variable
    def Transform.lowercase(string_input)
        string_input.downcase;
    end 
end

myString = Transform.new("abc");

puts myString.uppercase;

puts Transform.lowercase("ZXR");

