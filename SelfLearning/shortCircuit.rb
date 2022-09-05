def a
    puts "A is evaluated";
    return true;
end

def b
    puts "B is evaluated";
    return true;
end

puts a || b;
puts "------";
puts a && b;
