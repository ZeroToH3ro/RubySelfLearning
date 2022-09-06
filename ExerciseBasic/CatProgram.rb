class Pet 
    attr_reader :name, :age;
    
    def initialize(name, age)
        @name = name;
        @age = age;
    end

end

class Cat < Pet
    attr_reader :color;

    def initialize(name, age, color)
        super(name, age);
        @color = color;
    end

    def to_s
        "Hello, My name is #{name} and my age is #{@age} and my color is #{color}.";
    end
end

britishCat = Cat.new("Milk", 20, "tabby");
puts britishCat.to_s; 
syphynCat = Cat.new("Long", 2, "air");
puts syphynCat.to_s; 