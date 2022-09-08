def count_5_arrays(array)
  count = 0;
  array.each {
    |item| count += 1 unless item != 5;
  }
  return count;
end

print count_5_arrays([1, 2, 9]),"\n"
print count_5_arrays([1, 2, 5, 9]),"\n"
print count_5_arrays([1, 2, 5, 9, 5])


