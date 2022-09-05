my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2];
#sort!
print my_array.sort!;

#sort by comparision combined

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"];
#print descending order
puts books.sort! {|firstBook, secondBook| firstBook <=> secondBook};
#print ascending order
puts books.sort! {|firstBook, secondBook| secondBook <=> firstBook};