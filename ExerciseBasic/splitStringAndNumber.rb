def convert_array_string (array_string)
  array_string_split = array_string.split(",");
end

def convert_array_number (array_number)
  array_number_split = array_number.split(",").map {|item| item.to_i}; 
end

print convert_array_string("Minh, Anh, Fats"), "\n";
puts
print convert_array_number("1,2,3,4,5"), "\n";
