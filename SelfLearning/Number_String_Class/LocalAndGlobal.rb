localVariable = "Hello";
$globalVariable = "World";

def amethod 
  localVariable = 10;
  puts localVariable;
  puts $globalVariable;
end

def anotherMethod
  localVariable = 500;
  $globalVariable = "Bonjour"; 
  puts localVariable;
  puts $globalVariable;
end

amethod;
anotherMethod;

#https://www.techotopia.com/index.php/Ruby_Variable_Scope
