require 'prime'

def yield_var(var_num)
    sum = (2..Float::INFINITY).lazy.select{ 
        |x| x.to_s.reverse.to_i == x && Prime.prime?(x) }.first(var_num.to_i)
    return sum
end

num = gets.chomp
print yield_var(num)
puts

power_array = -> (power,array_size) do 
  1.upto(Float::INFINITY).lazy.map {
    |x| x**power
  }.first(array_size);
end

puts power_array.(2,3);



