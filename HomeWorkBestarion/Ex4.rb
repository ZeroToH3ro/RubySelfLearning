CONST_MIN = 0

def solve_problem_4
  loop do
    print "Enter the number of element in array: "
    @numbers_of_element = gets.chomp.to_i
    break if @numbers_of_element > CONST_MIN
    print "The number of elements should be positive and greater than zero\n"
  end

  @store_value = Array.new()
  while @numbers_of_element > CONST_MIN
    loop do
      @element = gets.chomp.to_i
      break if !@store_value.include? @element
      print "Number is duplicate, please enter again: "
    end
    @store_value.append(@element)
    @numbers_of_element -= 1
  end

  print "Enter the target: "
  target = gets.chomp.to_i

  if two_sum(@store_value, target).length > 2 then
    print "There is no element equal your target"
  else 
    print two_sum(@store_value, target)
  end
end

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |element, index|
    remainder = target - element
    return [nums[hash[remainder]], nums[index]] if hash[remainder]
    hash[element] = index
  end
end

solve_problem_4

