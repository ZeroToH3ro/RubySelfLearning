#this is a base class/super class
class Base_class
  def initialize
    puts "Create base class";
  end
  def display_method 
    puts "Call method from superclass";
  end  
end
#this is sub class is derivied from base_class
class Sub_class < Base_class
  def initialize
    puts "Create child class";
  end
end
#creating object of base_class
Base_class.new;
#creating object of child_class
subClass = Sub_class.new;
#child_class call method from super class 
subClass.display_method;



