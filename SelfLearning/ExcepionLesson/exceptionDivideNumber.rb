def doCalc
  tries = 0;
  begin
    print ("Enter a number: ");
    tries += 1;
    number_input = gets.chomp;
    result = 100/number_input.to_i; 
  rescue Exception => e #excute when there is error 
    msg = "Error " + e.to_s;
    puts msg;
    puts "Tries = #{tries}";
    result = 0;
    if tries < 3 then #set a fixed number of retries
      retry
    end
  else #excute when there is no error
    msg = "Result: #{result}"; 
  ensure #always excute
    msg = "You entered '#{number_input}'. " + msg;
  end
  return msg;
end

puts doCalc;
