def is_array_102030 (number)
  index = 0
  while index < number.length - 2
    if number[index..index+2] == [10,20,30]
    return true;
    else 
      index += 1;
    end
  end
end

print is_array_102030([10, 20, 30, 40, 50]),"\n"
print is_array_102030([0, 10, 20, 30, 90]),"\n"
print is_array_102030([10, 20, 50, 30, 70])


