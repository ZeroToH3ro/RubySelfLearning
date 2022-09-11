def check_exist_sub (string, subString)
  if string.include? subString
    puts "This string includes substring";
  else 
    puts "This string is not include substring";
  end 
end

check_exist_sub("Javascript", "script");
check_exist_sub("C++", "C");

