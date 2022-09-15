module Module_Lesson
  C = 10;
  #prefix with the name of method
  def portal
    puts "This is my program";
  end
  
  def tutorial
    puts "Define module and how to use module";
  end

  def topic
    puts "Module";
  end
end

#display the value of constant
#use :: to access value from module
puts Module_Lesson::C;

#display method
#puts Module_Lesson.portal;
#puts Module_Lesson.tutorial;
#puts Module_Lesson.topic;

class Bestarion 
  #use include to access method from module
  include Module_Lesson
  def add (a,b)
    return a+b;
  end
end

#create object 
objBestarion = Bestarion.new;
#access method from module
objBestarion.portal;
objBestarion.tutorial;
objBestarion.topic;
#access method from class 
puts objBestarion.add(20,30);

#Use of Modules: A module is a way categorize the methods and constants so that user can reuse them. Suppose he wants to write two methods and also want to use these methods in multiple programs. So, he will write these methods in a module, so that he can easily call this module in any program with the help of require keyword without re-writing code.



