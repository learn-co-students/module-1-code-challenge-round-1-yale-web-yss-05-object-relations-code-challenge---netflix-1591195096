# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alice = Viewer.new("alice")
bob = Viewer.new("bob")
carol = Viewer.new("carol")
dave = Viewer.new("dave")
eve = Viewer.new("eve")

movie1 = Movie.new("movie1")
movie2 = Movie.new("movie2")

alice.rate_movie(movie1, 4.5)
bob.rate_movie(movie1, 2.7)
carol.rate_movie(movie1, 9.5)
dave.rate_movie(movie1, 2.1)


alice.rate_movie(movie2, 6)
bob.rate_movie(movie2, 4)
carol.rate_movie(movie2, 2.5)
dave.rate_movie(movie2, 3.3)
eve.rate_movie(movie2, 1)
eve_review = eve.rate_movie(movie2, 2)

average_m1 = (4.5 + 2.7 + 9.5 + 2.1)/4 
average_m2 = (6+ 4 + 2.5 + 3.3 + 1 + 2)/6
best_movie = (average_m1 > average_m2) ? movie1 : movie2


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
