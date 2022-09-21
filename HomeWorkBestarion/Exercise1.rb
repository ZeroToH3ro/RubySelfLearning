def find_min_value_in_array
  print "Enter the amount of element in: ";
  number_element = 0;

  loop do
  number_element = gets.to_i;
  break if number_element <= 99 and number_element > 0
  print "Value > 99 or < 0, please enter again: ";
  end
  
  store_value = Array.new();
  while number_element>0
    element = gets.to_i;
    return if element == -1;
    store_value.append(element);
    number_element-=1;
  end
  
  print store_value;
  print "\nMin value: ",store_value.min;
end

find_min_value_in_array;
puts;
