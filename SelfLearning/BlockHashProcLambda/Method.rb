def sayHello(name, age)
    puts "Hello " + name;
    puts "My age is " + age.to_s;
end

puts "Top"
name = gets.chomp();
age = gets.chomp();
sayHello(name, age);
puts "Bottom"
