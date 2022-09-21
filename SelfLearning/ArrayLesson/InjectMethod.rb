puts [1,2,3,4,5].inject(:+);
#1+2+3+4+5 = 15
puts [1,2,3,4,5].inject(2,:+);
#set 2 is the first number
#2+1+2+3+4+5 = 17
puts [3,6,10].inject {|sum, number| number+sum };
#3+6
#9+10

#building hashes





