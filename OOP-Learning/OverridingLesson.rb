class Base_class 
  def display_method (a=0, b=0)
    puts "Parent class: 1st agrument #{a} 2nd agrument #{b}";
  end 
end

class Sub_class < Base_class
  # subclass method having the same name
  # as superclass
  def display_method (a, b) 
    # calling the superclass method
    # by default it will pass
    # both the arguments
    super

    #passing only one agruement
    super a;

    #passing both the agruments
    super a,b;

    # calling the superclass method
    # by default it will not pass
    # both the arguments
    super();
    
    puts "This is from sub class";
  end
end

# creating object of derived class
obj = Base_class.new
 
# calling the method of base class
obj.display_method "Hello", "World!!"

objChild = Sub_class.new;
objChild.display_method "Hello", "You";

