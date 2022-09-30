#not perfect program
sub_array = [1, -1, 6, 10]
array = [5, 1, 22, 26, -1, 6, 8, 10]

def solve_problem_5(sub_array, array)
  length_sub_array = sub_array.length
  length_array = array.length
  $count = 0

  sub_array.each do |element|
    if array.include? element
      new_index = array.index(element)
      array = array[new_index, length_array]
      $count += 1
    end
  end

  puts $count == length_sub_array ? true : false
end

solve_problem_5(sub_array,array)
