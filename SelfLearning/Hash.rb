states = {
    "HaNoi" => "HN",
    "Newyorks" => "NY",
    "SaiGon" => "SG"
};
#print accoring values
puts states["SaiGon"];

pets = Hash.new;

#iterator for each element in hash and array
friend = ["Minh", "Anh", "Fats", "Vy"];

family = {
    "Minh" => "Husband",
    "Vy" => "Wife",
    "Rot" => "Dog",
    "Milk" => "Cat"
}

friend.each { |friend| puts "#{friend}" };

family.each { |key, value| puts "#{key}: #{value}"};
