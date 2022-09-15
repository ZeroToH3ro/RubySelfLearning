array = [1,2,3,4,5,6,7];
#select element by select
print array.select { |a| a>4 };
puts
#select element by reject
print array.reject { |a| a > 2};
puts;
#select value by drop_while
print array.drop_while {|a| a < 4};
puts;
#select by delete will change origin array
print array.delete_if {|a| a<4};
puts;
#select by keep if will change origin array
print array.keep_if {|a| a<5}
puts;



