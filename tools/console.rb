# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


viewer = Viewer.new("Chester")
viewer1 = Viewer.new("Asphalt")
viewer2 = Viewer.new("Tungsten")
viewer3 = Viewer.new("Delta")

movie = Movie.new("Singing in the Rain")
movie1 = Movie.new("Boyhood")
movie2 = Movie.new("The Showstopper")
movie3 = Movie.new("McFarland, USA")

review = Review.new(viewer, movie, 7)
review1 = Review.new(viewer, movie1, 4)
review2 = Review.new(viewer1, movie1, 10)
review3 = Review.new(viewer2, movie1, 7)
review4 = Review.new(viewer3, movie1, 7)
review5 = Review.new(viewer1, movie3, 4)
review6 = Review.new(viewer2, movie2, 8)
review7 = Review.new(viewer3, movie2, 9)
review8 = Review.new(viewer3, movie, 3)
review9 = Review.new(viewer2, movie, 5)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
