movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
  }
# Add your code below!
  
good_movies =  movie_ratings.select {|name, rating| rating > 3}
puts good_movies;

#each key and each value for movies

movie_ratings.each_key {|key| print key, " "};
movie_ratings.each_value {|value| print value, " "};