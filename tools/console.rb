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

review_a1 = alice.rate_movie(movie1, 4.5)
review_b1 = bob.rate_movie(movie1, 2.7)
review_c1 = carol.rate_movie(movie1, 9.5)
review_d1 = dave.rate_movie(movie1, 2.1)


review_a2 = alice.rate_movie(movie2, 6)
review_b2 = bob.rate_movie(movie2, 4)
review_c2 = carol.rate_movie(movie2, 2.5)
review_d2 = dave.rate_movie(movie2, 3.3)
review_e1 = eve.rate_movie(movie2, 1)
review_e2 = eve.rate_movie(movie2, 2)

average_m1 = (4.5 + 2.7 + 9.5 + 2.1)/4 
average_m2 = (6+ 4 + 2.5 + 3.3 + 1 + 2)/6
best_movie = (average_m1 > average_m2) ? movie1 : movie2

alice_movies = [movie1, movie2]
bob_movies = [movie1, movie2]
carol_movies = [movie1, movie2]
dave_movies = [movie1, movie2]
eve_movies = [movie2]

alice_reviews = [review_a1, review_a2]
bob_reviews = [review_b1, review_b2]
carol_reviews = [review_c1, review_c2]
dave_reviews = [review_d1, review_d2]
eve_reviews = [review_e1, review_e2]

mov1_reviews = [review_a1, review_b1, review_c1, review_d1]
mov2_reviews = [review_a2, review_b2, review_c2, review_d2, review_e1, review_e2]

mov1_reviewers = [alice, bob, carol, dave]
mov2_reviewers = [alice, bob, carol, dave, eve]

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
