friends = Array["Kevin", "Karen", "Oscar"];

for element in friends 
    puts element
end

friends.each do |friend|
    puts friend 
end

6.times do |index|
    puts index
end
#multiple element
my_array = [1, 2, 3, 4, 5];
result = 1;

my_array.each do |element|
  result *=element;
end

puts result;
#multiple each element
my_array.each do |element|
    puts element*element;
end
#sort by method
def alphabetize(arr, rev = false)
    if rev
        arr.sort { |a,b| b <=> a }
    else
        arr.sort { |a,b| a <=> b }
    end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
puts "A-Z: #{alphabetize(books)}";
puts "Z-A: #{alphabetize(books, true)}";

#print each value of hash
matz = { 
    "First name" => "Yukihiro",
    "Last name" => "Matsumoto",
    "Age" => 47,
    "Nationality" => "Japanese",
    "Nickname" => "Matz"
}
  
matz.each do |key, value|
    puts [value];
end