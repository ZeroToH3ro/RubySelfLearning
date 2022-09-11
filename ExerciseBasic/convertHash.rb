def convert_array_into_hash (array)
  return Hash[array.zip];  
end

puts convert_array_into_hash([1,2,3,4,5]);
