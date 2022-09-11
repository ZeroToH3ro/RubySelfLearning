def check_7_exist (array)
  if (array[0] == 7 || array[array.length-1] == 7)
    return true;
  else
    return false;
  end
end

puts check_7_exist([1,2,7]);
puts check_7_exist([7,2,7]);
puts check_7_exist([1,2,3]);
