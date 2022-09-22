multiples_of_3 = Proc.new do |n|
    n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3);
#cube Proc.new 3
cube = Proc.new { |x| x ** 3}
puts
puts [1,2,3].collect!(&cube);
puts [2,3,4].collect!(&cube);
#round down for float elements use Proc
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!
round_down = Proc.new { |element| element.floor }
# Write your code above this line!
ints = floats.collect!(&round_down)
print ints
#find all people is taller than 4 feet
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet);
can_ride_2 = group_2.select(&over_4_feet);
can_ride_3 = group_3.select(&over_4_feet);

puts can_ride_1
puts can_ride_2
puts can_ride_3
# cast typing element in array
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.collect(&:to_s);

#exercise 1: creating proc to greet
def greeter 
  yield
end

phrase = Proc.new {puts "Hello there!"}
greeter(&phrase)

#exercise 2: creating proc called hi
hi = Proc.new {puts "Hello!"}
hi.call
