friends = Array["Kevin", "Karen", "Oscar"];
#print all data in array
puts friends;
#print each data according index
#we can print more element with puts name_variable[index,index,...]
puts friends[2];
#find element in array 
puts friends.include? "Kevin";
#Sort element in array
puts "Sort element in array:"
puts friends.sort();
#Reverse elements in array
puts "Reserve elements in array:"
puts friends.reverse();