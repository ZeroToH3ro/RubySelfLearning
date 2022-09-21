def calc (first_number, second_number)
  begin
    value = first_number/second_number;
  rescue Exception => e
    puts e.class
    result = nil;
  end
end
print calc(20,0);
