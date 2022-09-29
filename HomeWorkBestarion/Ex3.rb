CONST_MAX = 99
CONST_MIN = 0

def find_ascending_array  
  number = 0
  loop do
    print "Enter the number of element in array: "
    number = gets.to_i
    break if number <= CONST_MAX and CONST_MIN < number
    print "Value > 99 or < 0, please enter again: \n"
  end

  new_array = Array.new()
  $count = 1
  array_random = Array.new(number) { rand(1..9) }
  print array_random

  array_random.each_with_index do |element, index|
    if !array_random[index + 1].nil? && array_random[index] <= array_random[index + 1]
      new_array.append(element)
    else
      if index == array_random.length - 1 && array_random[index - 1] < array_random[index]
        new_array.append(element).to_s
        print "\nSub array #{$count}: ", new_array
        break
      end
      new_array.append(element).to_s
      print "\nSub array #{$count}: ", new_array
      new_array.clear
      $count += 1
    end
  end
end

find_ascending_array
puts
