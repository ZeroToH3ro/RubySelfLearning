def is_leap_year (number)
  if number % 4 == 0 and number % 100 != 0;
    puts "This is #{number} leap year" 
  else
    puts "This is #{number} not leap year";

  end
end
is_leap_year(2100);
is_leap_year(2020);
is_leap_year(2000);
is_leap_year(2104);

