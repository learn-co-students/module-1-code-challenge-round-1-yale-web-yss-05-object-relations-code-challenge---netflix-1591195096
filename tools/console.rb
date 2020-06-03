# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Mighty Ducks")
movie2 = Movie.new("Avengers")
movie3 = Movie.new("Garfield")

viewer1 = Viewer.new("James")
viewer2 = Viewer.new("Jeanne")
viewer3 = Viewer.new("Ada")
viewer4 = Viewer.new("Soren")

review1 = Review.new(viewer1, movie2, 4)
review2 = Review.new(viewer2, movie2, 4)
review3 = Review.new(viewer3, movie2, 5)
review4 = Review.new(viewer4, movie2, 5)
review5 = Review.new(viewer4, movie3, 5)
review6 = Review.new(viewer1, movie1, 3)
review7 = Review.new(viewer2, movie1, 1)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
