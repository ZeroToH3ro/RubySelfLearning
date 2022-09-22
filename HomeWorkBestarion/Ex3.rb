def find_ascending_array
  number = 0;
  loop do
  print "Enter the number of element in array: ";
  number = gets.to_i;
  break if number <= 99 and number > 0
  print "Value > 99 or < 0, please enter again: ";
  end
  
  new_array = Array.new();
  $count = 1;
  array_random = Array.new(number){rand(0..99)};
  print array_random;

  array_random.each_with_index do |element, index|
    if !array_random[index+1].nil? && array_random[index] <= array_random[index+1]
      new_array.append(element);
    else
      if index == array_random.length-1 && array_random[index-1] < array_random[index] 
      then
        new_array.append(element).to_s;
        print "\nSub array #{$count}: ", new_array;
        break;
      end
      new_array.append(element).to_s;
      print "\nSub array #{$count}: ", new_array;
      new_array.clear;
      $count += 1;
    end
  end
end

find_ascending_array;
puts;
