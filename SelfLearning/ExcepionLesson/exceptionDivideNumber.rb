def doCalc(number_input) 
  begin 
    result = 100/number_input.to_i; 
  rescue Exception => e #excute when there is error 
    msg = "Error " + e.to_s;
    result = 0;
  else #excute when there is no error
    msg = "Result: #{result}"; 
  ensure #always excute
    msg = "You entered '#{number_input}'. " + msg;
  end
  return msg;
end

puts doCalc(303);
