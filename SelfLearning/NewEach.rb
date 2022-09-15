def puts_1_to_10(array)
    lastIndex = array.length-1;
    (0..lastIndex).each do |i| puts array[i]
    end
end

puts_1_to_10([11,12,13,14,15]);