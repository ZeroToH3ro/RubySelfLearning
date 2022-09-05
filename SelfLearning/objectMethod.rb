class Student
    attr_accessor :name, :major, :gpa;
    def initialize(name, major, gpa)
        @name = name;
        @major = major;
        @gpa = gpa;
    end
    def has_honor
        if @gpa >= 3.5
            return true;
        else 
            return false;
        end
    end
end

student1 = Student.new("Minh", "IT", 3.1);
student2 = Student.new("Anh", "IT", 3.6);

puts student1.has_honor;
puts student2.has_honor;
