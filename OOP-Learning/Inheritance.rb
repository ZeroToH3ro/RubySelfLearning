class ApplicationError
    def display_error
        puts "Application Error";
    end
end

class SuperBadError < ApplicationError
end

#create object and call methods

err = SuperBadError.new;
err.display_error;
