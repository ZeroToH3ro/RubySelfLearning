arr = [9, 5, 1, 2, 3, 4, 0, -1]

def element_at(arr, index)
    # return the element of the Array variable `arr` at the position `index`
    # arr.at(index) # or
    # arr[index]
    return arr[index];
end

print element_at(arr, 2),"\t";

def inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
    return arr[start_pos..end_pos];
end

print inclusive_range(arr,1,4),"\t";

def non_inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
    return arr[start_pos...end_pos]
end

print non_inclusive_range(arr,1,4),"\t";

def start_and_length(arr, start_pos, length)
    # return `length` elements of the Array variable `arr` starting from `start_pos`
    arr[start_pos,length];
end

print start_and_length(arr,1,4);
