f = File.new("test.txt");

begin
  for i in (1..6) do 
    puts "Line number in test.txt: #{f.lineno}";
    line = f.gets.chomp;
    number = line.to_i;
    puts "Line '#{line}' is converted to number #{number}";
    puts 100/number;
  end
  rescue Exception => e
    puts e
  ensure
    f.close;
    puts "File closed";
end
