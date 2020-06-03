# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("movie1")
movie2 = Movie.new("movie2")
movie3 = Movie.new("movie3")
movie4 = Movie.new("movie4")
movie5 = Movie.new("movie5")

viewer1 = Viewer.new("viewer1")
viewer2 = Viewer.new("viewer2")
viewer3 = Viewer.new("viewer3")
viewer4 = Viewer.new("viewer4")

Review.new(viewer1, movie1, 4)
Review.new(viewer2, movie2, 6)
Review.new(viewer3, movie3, 8)
Review.new(viewer2, movie4, 2)
Review.new(viewer3, movie5, 1)
Review.new(viewer4, movie1, 10)
Review.new(viewer4, movie1, 4)
Review.new(viewer1, movie2, 7)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
