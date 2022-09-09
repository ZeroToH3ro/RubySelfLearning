def count_character_i (string)
  count = 0;
  for i in  0..string.length do 
    if string.slice(i) == 'i'
        count += 1;
      end
  end  
  return count >= 1;
end

puts count_character_i("python");
puts count_character_i("digital");
puts count_character_i("okie");


  

