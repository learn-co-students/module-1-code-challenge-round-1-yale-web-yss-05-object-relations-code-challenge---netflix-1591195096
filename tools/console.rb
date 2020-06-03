# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Tarazan")
movie2 = Movie.new("Frozen")
movie3 = Movie.new("Rambo")

viewer1 = Viewer.new("kissyface")
viewer2 = Viewer.new("movielover")
viewer3 = Viewer.new("comedygirl")
viewer4 = Viewer.new("horrormask")

review1 = Review.new(viewer1, movie2, 4)
review2 = Review.new(viewer1, movie1, 2)
review3 = Review.new(viewer2, movie2, 5)
review4 = Review.new(viewer3, movie1, 3)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
