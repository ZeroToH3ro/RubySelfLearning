#get string input
#chomp() => delete new line
puts "Enter your name: ";
name = gets.chomp();
puts ("Hello " + name);
#get number input
puts "Enter your number 1: ";
number1 = gets.chomp().to_f;
puts "Enter your number 2: ";
number2 = gets.chomp().to_f;
#sum 2 numbers
sum = number1 + number2;
puts ("The sum of 2 number: " + sum.to_s);
