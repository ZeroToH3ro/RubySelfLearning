def check_num_11 (a, b)
  return a == 11 || b == 11 || a+b == 11 || (a-b).abs == 11;
end

puts check_num_11(12,-1);
puts check_num_11(10,1);
puts check_num_11(0,11);
