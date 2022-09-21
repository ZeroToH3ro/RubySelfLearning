array = [1,2,3,4,5]
#use map to mul each element
#return a new array
def use_map (array)
  return array.map {|element| element*2};
end

print use_map(array);
puts
#convert string to integer
array_string = ["hello","2","3","4"];
def convert_string_to_integer(array_string)
  return array_string.map {|element| element.to_i};
end
print convert_string_to_integer(array_string);
puts
#method convert string to symbol
hash = { bacon: "protein", apple: "fruit" }
print hash.map { |k,v| [k, v.to_sym] }.to_h
puts
#use map with index
#%w: literal which use to create special object
array_w = %w(turtle cat different turtle);

print array_w.map.with_index {|ch,idx| [ch,idx]};
puts

#use map with shorthand
array_short_hand = ["11", "12", "5"];
print array_short_hand.map(&:to_i);
puts
