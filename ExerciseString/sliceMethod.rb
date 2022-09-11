def slice_method (string, subString)
  string.slice! subString;
  return string;
end

puts slice_method("Minh", "h");
puts slice_method("JavaScript", "Script");
