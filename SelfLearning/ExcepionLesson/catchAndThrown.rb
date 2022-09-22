#use catch and throw to break out block if met error

catch ( :finished){
  print("Enter a number: ");
  num = gets.chomp.to_i;
  begin
    result = 100/num;
  rescue Exception => e
    throw :finished;
  end
  puts "Result: #{result}";
}
