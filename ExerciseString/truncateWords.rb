def truncateWords (number, string)
  return string.split[0..number-1].join(' ');    
end

print "Enter the number: ";
number = gets.chomp().to_i;
puts
print "Enter string word: ";
words = gets.chomp();

puts truncateWords(number, words);




