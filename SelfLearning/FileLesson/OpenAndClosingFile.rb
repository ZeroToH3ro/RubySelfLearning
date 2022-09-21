f = File.new("myText.txt","w");
f.print %w(I am a programmer My name is Minh);
f.puts;
f.close;

#opening file and reading until eof 
line_count = 0;
char_count = 0;
f = File.new("myText.txt","r+");
while !(f.eof) do
  c = f.getc();         #get the character from file
  if (c.ord == 10) then #ord: return the number of ASCII
    line_count += 1;
    puts "End of line";
  else
    #print character
    putc(c)
    char_count += 1;
  end
end

f.close;
puts "This file contains #{line_count} lines and #{char_count} character";
