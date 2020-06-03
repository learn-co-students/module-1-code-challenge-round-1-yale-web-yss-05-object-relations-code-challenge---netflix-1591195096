# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

viewer1 = Viewer.new("arthur")
viewer2 = Viewer.new("omar")
viewer3 = Viewer.new("seb")

movie1 = Movie.new("Fast and Furious")
movie2 = Movie.new("Uncut Gems")
movie3 = Movie.new("Memento")
movie4 = Movie.new("Cars")

review1 = Review.new(viewer1, movie1, 5)
review2 = Review.new(viewer2, movie1, 7)
review3 = Review.new(viewer3, movie3, 9)
review4 = Review.new(viewer2, movie3, 10)
review5 = Review.new(viewer1, movie2, 9.5)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
