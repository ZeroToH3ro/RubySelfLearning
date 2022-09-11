def chop_method_string (number,string)
  number.times do string.chop! end;
  return string;
end

puts chop_method_string(3,"Minh");
