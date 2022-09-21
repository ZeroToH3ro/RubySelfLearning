#detect method returns the first element which satisfies the given condition in block
result_detect = (1..100).detect {|num| num%2==0 && num%4==0};
print "The first number divide 2 and 4 is ",result_detect;
puts
