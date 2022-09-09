def check_word_exist_way1 (array, word_check)
  array.each do |element|
    if element == word_check
      return true;
    end
  end
    return false;
end
 
puts check_word_exist_way1(["Red","Green","Blue","Pink"], "Green");
puts check_word_exist_way1(["Red","Green","Blue","Pink"], "Black");

def check_word_exist_way2 (array, word_check)
  return array.include?word_check;
end

puts check_word_exist_way2(["Red","Green","Blue","Pink"], "Green");
puts check_word_exist_way2(["Red","Green","Blue","Pink"], "Black");


