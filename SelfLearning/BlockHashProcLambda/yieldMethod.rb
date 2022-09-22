def double(num)
    yield(num)
end
  
double(16) {|x| puts x * 2}


#yielding with parameters

def yield_name(name)
  puts "In the method"; 
  yield("Kim"); #call with parameter
  puts "In the between";
  yield(name); #call without parameter
  puts "End";
end

yield_name("Eric"){|name| puts "Hello, my name is #{name}" };
