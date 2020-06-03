# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


### Initializers, Readers, and Writers

movie_1 = Movie.new("Avengers: Infinity war")
movie_2 = Movie.new("Scoob")
movie_3 = Movie.new("Sonic the Hedgehog")

viewer_1 = Viewer.new("Nick")
viewer_2 = Viewer.new("Alex")
viewer_3 = Viewer.new("John")

review_1 = Review.new(viewer_1, movie_1, 10)
review_2 = Review.new(viewer_2, movie_2, 7)
review_3 = Review.new(viewer_3, movie_3, 6)
review_4 = Review.new(viewer_1, movie_2, 9)

pp Movie.all
puts "********************************"
pp Viewer.all
puts "********************************"
pp Review.all



# Pry Checks: ✓
# Dry Check: ✓
# Scripted Checks: ✓


  puts "- title **can be** changed after the `Movie` is initialized"
  pp movie_1.title = "Avengers: endgame"

  puts "- returns the `Movie`'s title"
  pp movie_1.title

  puts "- username **can be** changed after the Viewer is initialized"
  pp viewer_1.username = "Kastriot"

  puts "- returns the Viewer's username"
  pp viewer_1.username


  puts "- returns the rating for the `Review` instance"
  pp review_1.rating


  puts "- returns the `Viewer` instance associated with the `Review` instance"
  pp review_1.viewer

  puts "- returns the `Movie` instance associated with the `Review` instance"
  pp review_1.movie



  puts "- returns an array of `Review` instances associated with the `Viewer` instance."
  pp viewer_1.reviews

  puts "- returns an array of `Movie` instances reviewed by the `Viewer` instance."
  pp viewer_1.reviewed_movies


  puts "- returns an array of all the `Review` instances for the `Movie`."
  pp movie_2.reviews

  puts "- returns an array of all of the `Viewer` instances that reviewed the `Movie`."
  pp movie_2.reviewers


  puts "- returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise"
  pp viewer_1.reviewed_movie?(movie_1)


  puts "- if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance"
  pp viewer_1.rate_movie(movie_3, 100)

  puts "- if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance"
  pp viewer_1.rate_movie(movie_1, 0)



  puts "- returns the average of all ratings for the `Movie` instance"
  pp movie_2.average_rating


  puts "- returns the `Movie` instance with the highest average rating."
  pp Movie.highest_rated

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
