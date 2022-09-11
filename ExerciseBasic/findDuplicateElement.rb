def print_duplicate_number (array)
  lastIndex = array.length-1;
  (0..lastIndex).each do |i|
    array[array[i]%lastIndex] =
    array[array[i]%lastIndex] + lastIndex; 
    end;
  (0..lastIndex).each do |i|
    if (array[i] >= lastIndex*2)
        print i,"\t";
    end;
  end
end
print_duplicate_number([1,1,2,2,3,4,4,3,2]);
puts;
print_duplicate_number([3,2,2,2,3,9,9,3,1]);
