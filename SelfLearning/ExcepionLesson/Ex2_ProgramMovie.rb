movies = {
    Memento: 3,
    Primer: 4,
    Ishtar: 1
};

def menuMovieProgram(movies)
    loop do 
    puts "What would you like to do?"
    puts "-- Type 'add' to add a movie."
    puts "-- Type 'update' to update a movie."
    puts "-- Type 'display' to display all movies."
    puts "-- Type 'delete' to delete a movie."
    choice = gets.chomp;
    case choice
    when "add"
        print "Enter the name of the movie you want to add: ";
        name_movie = gets.chomp;
        if movies[name_movie.to_sym].nil?
            print "\nEnter rating: ";
            rating_movie = gets.chomp.to_i;
            movies[name_movie.to_sym] = rating_movie;
            puts "Movie #{name_movie} has been added with rating #{rating_movie}";
        else 
            puts "Movie already exist\nPlease enter again";
    end
    when "update"
        print "Enter the name of the movie you want to update: ";
        name_movie = gets.chomp;
        if !movies[name_movie.to_sym].nil?
            print "\nEnter rating: ";
            rating_movie = gets.chomp.to_i;
            movies[name_movie.to_sym] = rating_movie;
            puts "Movie #{name_movie} has been updated with rating #{rating_movie}";
        else 
            puts "Movie not found\nPlease enter again"
    end
    when "display"
        movies.each do |name, rating|
            puts "Movie #{name} with rating: #{rating}";
    end
    when "delete"
        print "Enter the name of the movie you want to delete: ";
        name_movie = gets.chomp;
        if !movies[name_movie.to_sym].nil?
            movies.delete(name_movie.to_sym);
            puts "Movie has been deleted";
        else 
            puts "Movie has been deleted";
        end
    when "x"
        break;
        end
    end
end
#run program
menuMovieProgram(movies);