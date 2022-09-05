secret_word = "Minh";
guess = "";

while guess != secret_word
    puts "Enter your guess";
    guess = gets.chomp();
end

puts "You won";