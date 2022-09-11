def remove_blank_in_array (array)
  new_array = array.reject { |character| character.empty? }
end

print remove_blank_in_array(["Hello", "", "I","Am",""]),"\n";
