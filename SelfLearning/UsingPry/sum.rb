require 'pry'

def sum (a=20, b=30)
  binding.pry;
  sum = a+b;
end

puts sum;
