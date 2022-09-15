=begin
Challenge: Write the method count_multibyte_char which takes a string as input and returns the number of multibyte characters (byte size > 1) in it.
=end
def count_multibye_char (string)
  return string.chars.count {|c| c.bytesize > 1};
end

puts count_multibye_char("Hellowrold");
