#method that capitalizes a word
def capitalize(string)
    puts "#{string[0].upcase}#{string[1..-1]}";
end

capitalize("ryan");
capitalize("john");

puts "Capitalize by block";

#block that capitalizes each string in the array
["minh", "fat", "anh"].each {|string| print "#{string[0].upcase}#{string[1..-1]}" + "\t"};
#remove '%' in terminal
puts