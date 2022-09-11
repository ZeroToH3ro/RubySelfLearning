def average_except_min_max (array)
  sum = 0;
  max = array[0];
  min = array[0];

  array.each do |element|
    sum += element;
    if(max < element) then max = element;
      end 
    if(min > element) then min = element;
      end
  end

  return (sum-min-max).to_f / (array.length-2);
end

puts average_except_min_max([1,2,3,4,5,9]);
