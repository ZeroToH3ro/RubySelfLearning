print "Enter the number: ";
number = gets.chomp.to_i;

def printStart(number)
  (1..number).each {
    |i| (1..i).each {
      print "*";
    }
    puts;
  }
end

printStart(number);
