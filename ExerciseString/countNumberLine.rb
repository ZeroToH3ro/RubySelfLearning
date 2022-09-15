#count the number line of string

def count_number_lines (string)
  return string.lines.count;
end

string_input = "Hello world, my name is Minh
                I am a developer at Bestarion";
puts count_number_lines(string_input);
