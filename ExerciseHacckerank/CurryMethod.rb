=begin
multiply_numbers = -> (x,y) do
    x-y
end

doubler = multiply_numbers.curry.(2)
tripler = multiply_numbers.curry.(5)

puts doubler.(4)    #8
puts tripler.(4)    #12
=end

def sum(a, *b)
  a + b.inject(0) { |a,b|  a+b}
end

sum_10_elements = method(:sum).curry(10);

(1..10).each do |n|
  sum_10_elements = sum_10_elements.call(n);
  puts sum_10_elements;
end






