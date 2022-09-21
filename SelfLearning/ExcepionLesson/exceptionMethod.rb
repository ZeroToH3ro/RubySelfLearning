#using exception method

begin 
  x = 1/0;
rescue Exception
  x = 0;
  #print error from class
  puts $!.class
  #print error
  #a global variable to which is assigned the last exception
  puts $!
end

puts x







