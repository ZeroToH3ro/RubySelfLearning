result = (2..6).collect {|x| x*10};
print result;
puts

# returns an enumerator with nil
enumerator = (2..6).collect {};
print enumerator;
puts
#what is the different between collect and each
a = ["L","Z","J"].collect{|x| puts x.succ} #=> M AA K 
print  a.class  #=> Array

b = ["L","Z","J"].each{|x| puts x.succ} #=> M AA K
print  b.class #=> Array

#Array each takes an array and applies the given block over all item
#It doesn't affect the array or creates a new object. It is just a way of looping over items.

#collect is same as Array#map and it applies the given block of code on all the items and returns the new array. simply put 'Projects each element of a sequence into a new form'


