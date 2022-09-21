#use gsub to replace all character by pattern and display new string

puts "hello enginer".gsub(/[ueoai]/,'*');
=begin
def mask_article (str, arr_str)
  arr_str.each do|item|
    str.gsub!(/#{item}/, strike(item));
  str;
  end
end

def strike (word)
  "<strike>" + "#{word}" + "</strike>";
end
=end


def mask_article(str, arr)
    arr.each { |word| str.gsub!(/#{word}/, strike(word)) }
end

def strike(str)
    "<strike>" + "#{str}" + "</strike>"
end

print mask_article("Minh", ["Hello Minh From Bestarion"]);
